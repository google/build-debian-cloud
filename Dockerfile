FROM debian:wheezy
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends debootstrap parted
ADD . /build-debian-cloud
WORKDIR /build-debian-cloud
CMD []
ENTRYPOINT ["/build-debian-cloud/build-debian-cloud"]
