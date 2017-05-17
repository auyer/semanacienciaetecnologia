FROM node:7-onbuild

RUN mkdir -p /src/app

WORKDIR /src/app

COPY package.json /src/app/package.json

RUN npm install

COPY . /src/app

EXPOSE 8082

CMD ["npm","run","dev"]
