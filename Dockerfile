FROM tiangolo/uwsgi-nginx-flask:python3.6

# copy over our requirements.txt file
COPY requirements.txt /tmp/

# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

# copy over our app code
COPY ./app /app

# entrypoint.sh
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["./entrypoint.sh"]
RUN chmod +x entrypoint.sh

# open port on the container
EXPOSE 5000

# run app
CMD ["export FLASK_APP=app && flask run"]