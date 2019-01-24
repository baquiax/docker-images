FROM yalochat/emberjs:3.4.4 AS build

COPY . /app
WORKDIR /app
RUN bower install --allow-root &&\
    npm install &&\
    ember build --environment=production --output-path=/release

FROM nginx:alpine
COPY --from=build /release /usr/share/nginx/html
