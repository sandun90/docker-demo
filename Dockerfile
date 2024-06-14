FROM python:3.10-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY python/requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY python/app.py .
CMD ["flask", "run", "--debug"]
# From nginx
# From python

# RUN apt-get update
# RUN apt-get -y install nginx
# WORKDIR /usr/app/src

# COPY index.html /var/
# COPY python/demo.py $WORKDIR


# CMD ["python","./demo.py"]
# CMD ["echo","Hello Wrold"]
# COPY index.html /usr/share/nginx/html