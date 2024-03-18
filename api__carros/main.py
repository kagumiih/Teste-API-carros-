from flask import Flask, request, make_response, jsonify
from carros import Carros
import pyodbc

dados_conexao = (
    "Driver={SQL Server};"
    "Server=JULIANE\SQLEXPRESS;"
    "Database=LISTA_DE_CARROS;"
)

conexao = pyodbc.connect(dados_conexao)

app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False

@app.route('/carros', methods = ['GET'])
def get_carros():
    return make_response(
        jsonify(
            dados = Carros,
            mensagem = 'Lista de Carros'
        )
    )
     
@app.route('/carros', methods = ['POST'])
def add_carro():
    carro = request.json
    Carros.append(carro)
    return make_response(
        jsonify(
            mensagem = 'Carro cadastrado!',
            carro = carro
            )
        )

app.run()