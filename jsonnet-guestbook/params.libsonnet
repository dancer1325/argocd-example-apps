{
  containerPort: 80,
  image: "swr.cn-east-3.myhuaweicloud.com/kubesre/gcr.io/heptio-images/ks-guestbook-demo:0.2",
  name: "jsonnet-guestbook-ui",
  replicas: 1,
  servicePort: 80,
  type: "LoadBalancer",
}
