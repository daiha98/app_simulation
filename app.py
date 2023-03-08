import os
import joblib
import pandas as pd
from flask import Flask, jsonify, request


# Definindo Flask App
app = Flask(__name__)

# Carregando modelo armazenado
model_path = 'xgb-model.joblib'
model_path = os.path.join(
    os.getcwd(), 'src', 'models', 'output', 'xgb-model.joblib'
)
with open(model_path, 'rb') as f:
    model = joblib.load(f)


# Criando endpoint para predictions
@app.route('/invocations', methods=['POST'])
def predict():
    # Dados de entrada
    json_ = request.json
    # Convertendo input data para pandas dataframe
    pandas_ = pd.DataFrame(json_, index=[0])
    # Usando modelo para previsao de probabilidades
    prediction = model.predict_proba(pandas_)
    # Convertendo previsoes para lista
    prediction_list = prediction.tolist()
    # Retorno das previsoes como JSON object
    return jsonify(prediction=prediction_list)


# Definindo ping de health check
@app.route('/ping', methods=['GET'])
def ping():
    return "pong"


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
