import pyodbc

def obtener_conexion():
    try:
        conexion = pyodbc.connect("driver={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-KVSCLJM\MSSQLSERVER2;DATABASE=BD_Mathmatic_01;Trusted_Connection=yes;")
        # conexion = pyodbc.connect("driver={ODBC Driver 17 for SQL Server};SERVER=localhost;DATABASE=BD_Mathmatic_01;Trusted_Connection=yes;")
        print("Connection successful")
        return conexion
    except pyodbc.Error as e:
        print("Error de conexion:", e)
        return None  # Explicitly return None if the connection fails



obtener_conexion()

