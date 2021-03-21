FROM nginx
RUN apt-get update && apt-get install telnet -y
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
COPY nginx-ldap-auth.conf /etc/nginx/conf.d/nginx-ldap-auth.conf