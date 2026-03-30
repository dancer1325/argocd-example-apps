# how to deploy locally -- via -- Argo CD?
* [follow](../apps/README.md#how-to-deploy-locally)

# how to check it's tracked?
* adjust something / cause desired state != cluster state
  * _Example:_ [replicas](params.libsonnet)
* | browser,
  * https://localhost:8080/applications/argocd/example.jsonnet-guestbook?view=tree&resource=
    * AFTER reconcile time,
      * check it's redeployed
      * https://localhost:8080/applications/argocd/example.jsonnet-guestbook?view=tree&resource=&rollback=0

# why is service "jsonnet-guestbook-ui" FOREVER progessing?
* NO provide EXTERNAL-IP
  * `kubectl get service/jsonnet-guestbook-ui -n jsonnet-guestbook` & check "EXTERNAL-IP" column
