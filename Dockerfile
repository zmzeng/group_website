From python:alpine
RUN pip install --no-cache-dir gunicorn bottle
COPY . /www
WORKDIR /www
EXPOSE 80
CMD ["gunicorn", "--log-file=-", "-w", "4", "--bind", "0.0.0.0:80", "main:app"]

