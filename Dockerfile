FROM alpine:3.15.0
# copy over the binary from the first stage
COPY helloworld /helloworld/helloworld

WORKDIR "/helloworld"
ENTRYPOINT [ "/helloworld/helloworld" ]