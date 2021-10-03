FROM python:3.7.4

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY entrypoint.sh .
COPY requirements.txt .


RUN pip install --upgrade pip && pip install -r requirements.txt
#RUN pip install -r requirements.txt
RUN chmod +x entrypoint.sh

COPY . .

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]