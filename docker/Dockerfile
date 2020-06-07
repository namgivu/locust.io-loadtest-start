# ref. https://docs.locust.io/en/stable/running-locust-docker.html#use-docker-image-as-a-base-image
# ref. https://bit.ly/nnubuntupipenv
FROM namgivu/ubuntu-pipenv:18.04-3.7

WORKDIR /app

RUN echo 'install package   20200608-x01'
COPY ./Pipfile        .
COPY ./Pipfile.lock   .
RUN pipenv sync

RUN echo 'source folder   20200608-x0'
COPY .              .
#    source folder  workdir folder

RUN echo 'serve as web app at 8089   20200608-x0'
EXPOSE 8089
#CMD tail -f `mktemp`
CMD pipenv run   locust   -f /app/src/locustfile.py
#                locust   web app load locust user+task here
