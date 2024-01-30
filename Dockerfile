FROM ghcr.io/gis-ops/docker-valhalla/valhalla:latest

RUN sudo apt-get update
RUN sudo apt-get install -y curl osmium-tool

WORKDIR /custom_files

COPY valhalla-config.json valhalla-config.json
COPY jamaica.osm.pbf jamaica.base.osm.pbf
COPY run.sh run.sh

ENTRYPOINT []
