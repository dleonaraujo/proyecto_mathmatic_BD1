from flask import Blueprint, render_template
from modelos.conexion import obtener_conexion

cursos_estudiantes_bp=Blueprint("cursos_estudiantes", __name__, url_prefix="/cursos_estudiantes")


class CursosEstudiantes:
    def __init__(self, estudiante, curso, solicitudes, profesor):
        self.estudiante = estudiante
        self.curso = curso
        self.solicitudes = solicitudes
        self.profesor = profesor


@cursos_estudiantes_bp.route("/")
def obtener_sectores():
    conexion = obtener_conexion()
    cursor=conexion.cursor()
    cursor.execute("SELECT * FROM vista_cursos_estudiantes")
    cursos_estudiantes = []

    for registro in cursor.fetchall():
        ce = CursosEstudiantes(
            estudiante = registro.estudiante,
            curso = registro.curso,
            solicitudes = registro.solicitudes,
            profesor = registro.profesor
        )

        cursos_estudiantes.append(ce)

    cursor.close()
    conexion.close()

    return render_template("cursos_estudiantes.html",cursos_estudiantes=cursos_estudiantes)

