FROM ubuntu:latest
LABEL authors="vishi"

ENTRYPOINT ["top", "-b"]