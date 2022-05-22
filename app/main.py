
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def hello_world():
    return {"Response": "Hello World"}


@app.get("/hello/{caller}")
def hello_caller(caller:str):
    return {"Response": "Hello "+caller}
