# MLFLOW 
https://www.mlflow.org/docs/latest/tutorial.html#training-the-model


python examples/sklearn_elasticnet_wine/train.py
python examples/sklearn_elasticnet_wine/train.py <alpha> <l1_ratio>

mlflow ui
http://localhost:5000

run online: mlflow run git@github.com:mlflow/mlflow-example.git -P alpha=0.42.

## SERVING MODEL 
serving model: mlflow.sklearn.log_model(lr, "model")

mlflow pyfunc serve -m /Users/mlflow/mlflow-prototype/mlruns/0/7c1a0d5c42844dcdb8f5191146925174/artifacts/model -p 1234



### test 1 - 
curl -X POST -H "Content-Type:application/json; format=pandas-split" --data '{"columns":["alcohol", "chlorides", "citric acid", "density", "fixed acidity", "free sulfur dioxide", "pH", "residual sugar", "sulphates", "total sulfur dioxide", "volatile acidity"],"data":[[12.8, 0.029, 0.48, 0.98, 6.2, 29, 3.33, 1.2, 0.39, 75, 0.66]]}' http://127.0.0.1:1234/invocations

=> RESPOND: [6.379428821398614]
=> me: [3.5144719739505117]

### test 2 - missing columns  -- error 
curl -X POST -H "Content-Type:application/json; format=pandas-split" --data '{"columns":[ "chlorides", "citric acid", "density", "fixed acidity", "free sulfur dioxide", "pH", "residual sugar", "sulphates", "total sulfur dioxide", "volatile acidity"],"data":[[ 0.029, 0.48, 0.98, 6.2, 29, 3.33, 1.2, 0.39, 75, 0.66]]}' http://127.0.0.1:1234/invocations




