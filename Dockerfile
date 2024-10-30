FROM nginx:latest 
    # using the lastest Nginx as base image

RUN rm /etc/nginx/conf.d/default.conf 
    # remove the default server definition

COPY nginx.conf /etc/nginx/nginx.conf 
    # copy custom server configurations

COPY app1/ /usr/share/nginx/html/app1/
COPY app2/ /usr/share/nginx/html/app2/
    # copy the static content

EXPOSE 8080 8090
    # expose ports

