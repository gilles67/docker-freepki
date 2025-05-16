FROM golang as base

ENV DEBIAN_FRONTEND noninteractive 

RUN cd /root && git clone https://github.com/foundriesio/estserver.git && cd /root/estserver && make bin/estserver 




FROM debian

ENV DEBIAN_FRONTEND noninteractive

COPY ca /opt/ca

COPY --from=base /root/estserver/bin/estserver /opt/bin/

RUN apt-get update -y && apt-get install -y --no-install-recommends openssl

CMD ["sleep","infinity"]
