FROM python:3.9

RUN chmod 777 -R /root

WORKDIR /app

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . .

EXPOSE 7860

CMD ["python", "app.py"]
