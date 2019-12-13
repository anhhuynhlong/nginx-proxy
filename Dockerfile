FROM nginx:stable
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
ENV PUBLIC_SECURE_DOMAIN ""
ENV PUBLIC_WWW_DOMAIN ""
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
