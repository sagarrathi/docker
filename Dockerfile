FROM ubuntu:focal

WORKDIR /app


COPY requirements.txt  requirements.txt


RUN apt-get update
RUN apt-get -y install python3-pip

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000" ,"--noreload"]
 
# docker build --tag python-django .
# docker run --publish 8000:8000 python-django