#!/bin/bash

source /usr/sbin/b-log.sh
B_LOG --stdout true
DOCKER_LOG_LEVEL=${DOCKER_LOG_LEVEL:-INFO}
eval LOG_LEVEL_"${DOCKER_LOG_LEVEL}"

code=300
while [ $code -ne 200 ]
do
   INFO "Waiting for Prometheus to start before starting confd"
   sleep 0.5
   code=$(curl -s -o /dev/null -w "%{http_code}" localhost:9090/api/v1/query?query=prometheus_build_info)
   INFO "Prometheus API returned $code"
done

INFO "Starting confd"

/opt/confd/bin/confd -watch \
                     -backend etcd \
                     -node https://etcd-client.service.${CONSUL_DOMAIN}:2379 \
                     -client-ca-keys /etc/pki/ca-bundle.pem \
                     -client-cert /etc/pki/prometheus-etcd.pem \
                     -client-key /etc/pki/prometheus-etcd.key &