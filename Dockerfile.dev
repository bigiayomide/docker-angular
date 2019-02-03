FROM node:alpine as builder

WORKDIR /app

COPY ./package.json ./

RUN npm install 

COPY ./ ./   

RUN ng build --aot


FROM nginx 

COPY --from=builder /app/dist/multi-build-app /usr/share/html