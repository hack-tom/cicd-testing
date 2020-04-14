FROM tiangolo/uwsgi-nginx-flask:python3.6

# copy over requirements.txt file
COPY requirements.txt /tmp/

# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

# copy over our app code
COPY ./app /app
WORKDIR /app

# open port on the container
EXPOSE 8080

#entrypoint
ENTRYPOINT [ "python" ]

# run app
CMD [ "main.py" ]
