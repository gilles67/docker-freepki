FROM debian

ENV DEBIAN_FRONTEND noninteractive

COPY ca /opt/ca

RUN apt-get update -y && apt-get install -y --no-install-recommends openssl

CMD ["sleep","infinity"]
