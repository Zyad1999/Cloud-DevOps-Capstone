FROM python:3.9

WORKDIR /app

COPY ./app /app/

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt
    
EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]