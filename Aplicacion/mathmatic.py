from flask import Flask
from modelos.cursos_estudiantes import cursos_estudiantes_bp
from modelos.aula import aula_bp

app = Flask(__name__)

app.register_blueprint(cursos_estudiantes_bp)
app.register_blueprint(aula_bp)

if __name__ == "__main__":
    app.run(debug=True)

