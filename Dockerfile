FROM node:17-buster-slim
WORKDIR /usr/src/app
RUN  addgroup --system jack && adduser --system --no-create-home --disabled-password --disabled-login jack
COPY --chown=jack:jack ./src/package*.json ./
RUN npm install
COPY --chown=jack:jack ./src ./
ENTRYPOINT [ "npm" ]
CMD [ "run", "serve" ]