FROM node:alpine as builder

WORKDIR /app

COPY ./package.json ./

RUN npm install 

RUN npm install 

COPY ./ ./   

RUN npm run build


FROM nginx 

COPY --from=builder /app/dist/multi-build-app /usr/share/html