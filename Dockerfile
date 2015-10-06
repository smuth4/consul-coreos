FROM voxxit/consul

RUN apk update \
  && apk add jq curl

RUN rm -rf /var/cache/apk/*

ADD etcd-bootstrap /bin/etcd-bootstrap

ENTRYPOINT [ "/bin/etcd-bootstrap" ]
