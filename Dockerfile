FROM nginx:stable

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html

EXPOSE 80

RUN chown nginx.nginx /usr/share/nginx/html/ -R