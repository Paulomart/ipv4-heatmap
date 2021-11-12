FROM alpine:3.14

RUN apk update && apk add gd-dev g++ make ttf-inconsolata

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN make

ENTRYPOINT [ "/usr/src/app/ipv4-heatmap", "-f", "/usr/share/fonts/truetype/inconsolata/Inconsolata-Regular.ttf" ]
