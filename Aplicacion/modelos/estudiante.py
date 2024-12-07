from flask import Blueprint, render_template, Flask, request, redirect, flash, url_for
from modelos.conexion import obtener_conexion

estudiante_bp=Blueprint("estudiante", __name__, url_prefix="/estudiante")

estudiante_bp.secret_key = '123456789'

class Estudiante:
    def __init__(self, id, nombre, telefono, fecha, email, direccion):
        self.id = id
        self.nombre = nombre
        self.telefono = telefono
        self.fecha = fecha
        self.email = email
        self.direccion = direccion


@estudiante_bp.route("/")
def obtener_estudiantes():
    conexion = obtener_conexion()
    cursor=conexion.cursor()
    cursor.execute("SELECT * FROM vw_estudiantes")
    estudiantes = []

    for registro in cursor.fetchall():
        estudiante = Estudiante(
            id=registro.id,
            nombre=registro.nombre,
            telefono=registro.telefono,
            fecha=registro.fecha,
            email=registro.email,
            direccion=registro.direccion
        )
        estudiantes.append(estudiante)

    cursor.close()
    conexion.close()

    return render_template("estudiantes.html", estudiantes=estudiantes)


@estudiante_bp.route('/agregar')
def formulario_agregar_estudiante():
    return render_template("agregar_estudiante.html")


@estudiante_bp.route('/guardar_estudiante', methods=['POST'])
def guardar_estudiante():
    # Recolectar datos del formulario
    nombres = request.form['nombres']
    apellido_paterno = request.form['apellido_paterno']
    apellido_materno = request.form['apellido_materno']
    telefono = request.form['telefono']
    fecha_nacimiento = request.form['fecha_nacimiento']
    email = request.form['email']
    direccion = request.form['direccion']

    # Insertar datos en la base de datos usando un procedimiento almacenado
    conexion = obtener_conexion()
    cursor = conexion.cursor()
    try:
        cursor.execute("""
            EXEC RegistrarEstudiante @Nombres = ?, @ApellidoPaterno = ?, @ApellidoMaterno = ?, 
                                    @Telefono = ?, @FechaNacimiento = ?, @Email = ?, @Direccion = ?
        """, (nombres, apellido_paterno, apellido_materno, telefono, fecha_nacimiento, email, direccion))
        conexion.commit()
        print("Estudiante registrado con éxito.")
        # flash("Estudiante registrado correctamente.", "success")
    except Exception as e:
        conexion.rollback()
        print(f"Error: {e}")
        # flash(f"Error al registrar el estudiante: {e}", "danger")

    # Redirigir a la página principal o lista de estudiantes
    return redirect(url_for('estudiante.obtener_estudiantes'))
