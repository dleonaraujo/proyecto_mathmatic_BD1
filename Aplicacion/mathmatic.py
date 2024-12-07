from flask import Flask
from modelos.cursos_estudiantes import cursos_estudiantes_bp
from modelos.estudiante import estudiante_bp

app = Flask(__name__)

app.register_blueprint(cursos_estudiantes_bp)
app.register_blueprint(estudiante_bp)

if __name__ == "__main__":
    app.run(debug=True)

