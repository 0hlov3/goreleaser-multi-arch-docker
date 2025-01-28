FROM gcr.io/distroless/static:nonroot

COPY helloworld /helloworld

ENTRYPOINT [ "/helloworld" ]