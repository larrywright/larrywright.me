FROM golang:1.7-alpine

# Download and install hugo
ENV HUGO_VERSION 0.16
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_0.16_linux-64bit.tgz /tmp
RUN tar xzf /tmp/${HUGO_BINARY}.tgz -C /tmp \
	&& mv /tmp/hugo /usr/local/bin/hugo \
	&& rm /tmp/*

# Create working directory
RUN mkdir /usr/share/blog
WORKDIR /usr/share/blog

# Expose default hugo port
EXPOSE 1313

# Automatically build site
ADD site/ /usr/share/blog
RUN /usr/local/bin/hugo -d /usr/share/nginx/html/

# By default, serve site
ENV HUGO_BASE_URL http://localhost:1313
CMD /usr/local/bin/hugo --bind 0.0.0.0 server -b ${HUGO_BASE_URL}
