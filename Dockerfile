FROM gcr.io/distroless/static:nonroot

COPY goreleaser-multi-arch-docker /helloworld

ENTRYPOINT [ "/helloworld" ]