FROM openjdk:8-jre-alpine
MAINTAINER Bjarte Brandt <bjarte.brandt@gmail.no>

ENV TZ="GMT" \
  PATH="/usr/local/sqlcl/bin:${PATH}"

COPY ["download/sqlcl-*.zip", "scripts/*", "/tmp/"]

# This is a dummy volume to reference user's custom scripts
VOLUME ["/sqlcl"]
WORKDIR "/sqlcl"

RUN apk update && \
    apk upgrade && \
    # bash is required by sqlcl
    apk add bash && \
    # for tput which is required by sqlcl
    apk add ncurses && \
    chmod +x /tmp/install.sh && /tmp/install.sh

ENTRYPOINT ["sqlcl"]
CMD ["/nolog"]
