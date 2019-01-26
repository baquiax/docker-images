FROM yalochat/emberjs:3.4.4 AS build

WORKDIR /app

COPY package.json package-lock.json bower.json ./

RUN bower install --allow-root &&\
    npm install

COPY . .

RUN ember build --environment=production --output-path=/release

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /release /usr/share/nginx/html
