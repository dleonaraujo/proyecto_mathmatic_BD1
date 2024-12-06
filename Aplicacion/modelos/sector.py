from flask import Blueprint, render_template
from modelos.conexion import obtener_conexion

sector_bp=Blueprint("sector", __name__, url_prefix="/sector")


class Sector:
    def __init__(self, id, nombre, estado):
        self.id = id
        self.nombre = nombre
        self.estado = estado


@sector_bp.route("/")
def obtener_sectores():
    conexion = obtener_conexion()
    cursor=conexion.cursor()
    cursor.execute("SELECT * FROM adm.sector")
    sectores = []

    for registro in cursor.fetchall():
        sector = Sector(
            id=registro.id,
            nombre=registro.nombre,
            estado=registro.estado
        )

        sectores.append(sector)

    cursor.close()
    conexion.close()

    return render_template("sector.html",sectores=sectores)

