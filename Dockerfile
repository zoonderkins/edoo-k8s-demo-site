# Build Hugo from source with Go 1.24
FROM golang:1.24 AS builder

ENV HUGO_VERSION=0.147.5

RUN apt-get update && apt-get install -y git

# Get Hugo source code
RUN git clone --branch v${HUGO_VERSION} https://github.com/gohugoio/hugo.git /hugo

WORKDIR /hugo

# Build hugo
RUN go install

# Build the actual Hugo site
FROM golang:1.24 as hugo-builder

# Install the hugo binary from previous build
COPY --from=builder /go/bin/hugo /usr/local/bin/hugo

WORKDIR /site
COPY . .

RUN hugo --minify

# Final runtime image with NGINX
FROM nginx:alpine

COPY --from=hugo-builder /site/public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
