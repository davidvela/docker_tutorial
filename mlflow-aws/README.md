# mlflow-aws
https://hub.docker.com/r/krodriguez/mlflow-aws
https://github.com/KielRodriguez/mlflow-aws

# run

```console
foo@bar:~$ docker run --name mlflow -P \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
-e AWS_S3_BUCKET=$AWS_S3_BUCKET \
-e EXPERIMENT_NAME=Project1 krodriguez/mlflow:latest
```
