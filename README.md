helm & kubectl client
===
docker run -it --rm -e KUBECTL_OPTS='-n kube-system' xiaopal/helm-client kubectl

docker run -it --rm -e HELM_OPTS='--tls' xiaopal/helm-client helm

docker run -it --rm -v $HOME:/etc/home-settings xiaopal/helm-client
