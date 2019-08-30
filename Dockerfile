FROM nginx

COPY default.template /etc/nginx/conf.d/
COPY run-nginx.sh /

# Default values if they're not overridden
ENV CONCOURSE_URL=http://concourse.set-this-to-match-your-concourse-url.local
ENV RESOLVER=1.1.1.1

CMD [ "/run-nginx.sh" ]