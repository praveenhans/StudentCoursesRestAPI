FROM python:3.7-alpine
LABEL author=PraveenJoshi
LABEL blog=praveenjoshi.com
ARG HOME_DIR='/studentcourses'
ADD . $HOME_DIR
ENV MYSQL_USERNAME='praveenjoshi'
ENV MYSQL_PASSWORD='praveenjoshi'
ENV MYSQL_SERVER='localhost'
ENV MYSQL_SERVER_PORT='3306'
ENV MYSQL_DATABASE='test'
EXPOSE 8080
WORKDIR $HOME_DIR
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]