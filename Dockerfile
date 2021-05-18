FROM nginx:1.19.10
# COPY nginx.conf /etc/nginx/nginx.conf

COPY content /usr/share/nginx/html/
WORKDIR /var/log/nginx
RUN touch error.log && touch access.log && chmod 750 *.log