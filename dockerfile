FROM mongo:3.6

EXPOSE ${PORT}

ADD setup.sh /docker-entrypoint-initdb.d