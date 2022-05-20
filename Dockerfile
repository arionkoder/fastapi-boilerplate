FROM python:3.10
WORKDIR /src
COPY requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt
COPY . /src
EXPOSE 8080
ENTRYPOINT [ "sh", "run.sh" ]
