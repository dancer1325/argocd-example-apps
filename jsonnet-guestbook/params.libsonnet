{
  containerPort: 80,
  image: "gcr.io/google-samples/gb-frontend:v5",
  name: "jsonnet-guestbook-ui",
  replicas: 3,
  servicePort: 80,
  type: "LoadBalancer",
}
