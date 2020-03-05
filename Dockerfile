# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "zeckmalik6@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://52.66.243.54:8082 || exit 1

# tell docker what port to expose
EXPOSE 8082
