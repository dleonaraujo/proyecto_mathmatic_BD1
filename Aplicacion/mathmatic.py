from flask import Flask
from modelos.sector import sector_bp
from modelos.aula import aula_bp

app = Flask(__name__)

app.register_blueprint(sector_bp)
app.register_blueprint(aula_bp)

if __name__ == "__main__":
    app.run(debug=True)

