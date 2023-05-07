# syntax=docker/dockerfile:1
   
FROM node:19.9.0-bullseye
WORKDIR /app
COPY . .
RUN npm ci
#RUN npm run build
ENV NODE_ENV production
EXPOSE 3000
CMD [ "npm", "start" ]
