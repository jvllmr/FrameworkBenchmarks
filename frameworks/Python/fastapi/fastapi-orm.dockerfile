FROM python:3.10

ADD ./ /fastapi

WORKDIR /fastapi

RUN pip install -r /fastapi/requirements-orm.txt

EXPOSE 8080

CMD gunicorn app_orm:app -k uvicorn.workers.UvicornWorker -c fastapi_conf.py