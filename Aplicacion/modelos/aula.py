from flask import Blueprint, render_template
from modelos.conexion import obtener_conexion

aula_bp=Blueprint("aula", __name__, url_prefix="/aula")


class Aula:
    def __init__(self, id, codigo, estado, id_sector):
        self.id = id
        self.codigo = codigo
        self.estado = estado
        self.id_sector = id_sector



@aula_bp.route("/")
def obtener_aulas():
    conexion = obtener_conexion()
    cursor=conexion.cursor()
    cursor.execute("SELECT * FROM adm.aula")
    aulas = []

    for registro in cursor.fetchall():
        aula = Aula(
            id=registro.id,
            codigo=registro.codigo,
            estado=registro.estado,
            id_sector=registro.id_sector
        )
        aulas.append(aula)

    cursor.close()
    conexion.close()

    return render_template("aulas.html",aulas=aulas)

