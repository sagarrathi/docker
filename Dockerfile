FROM ubuntu:focal

WORKDIR /django

RUN apt-get update
RUN apt-get -y install python3-pip
ENV PYTHONUNBUFFERED=1

COPY requirements.txt  requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000" ,"--noreload"]
 

