FROM alpine:3.21.2
# copy over the binary from the first stage
COPY helloworld /helloworld/helloworld

WORKDIR "/helloworld"
ENTRYPOINT [ "/helloworld/helloworld" ]