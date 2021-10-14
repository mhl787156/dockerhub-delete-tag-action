# syntax=docker/dockerfile:1
FROM ros:foxy

RUN sudo apt-get update && sudo apt-get install git

CMD ["echo 'HELLO WORLD' "]
