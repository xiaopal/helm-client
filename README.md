helm & kubectl client
===
docker run -it --rm -e KUBECTL_OPTS='-n kube-system' xiaopal/helm-client kubectl

docker run -it --rm xiaopal/helm-client helm
