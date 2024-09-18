FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN chmod +x start_service.sh

ENTRYPOINT ["./start_service.sh"]