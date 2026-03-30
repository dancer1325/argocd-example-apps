# how to deploy locally -- via -- Argo CD?
* [follow](../apps/README.md#how-to-deploy-locally)

# how to check it's tracked?
* adjust something / cause desired state != cluster state
  * _Example:_ [replicaCount](values.yaml)
* | browser,
  * https://localhost:8080/applications/argocd/example.helm-guestbook?view=tree&resource=
    * AFTER reconcile time, 
      * check it's redeployed
      * https://localhost:8080/applications/argocd/example.helm-guestbook?view=tree&resource=&rollback=0
