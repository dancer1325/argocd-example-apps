# how to deploy locally -- via -- Argo CD?
* [follow](../apps/README.md#how-to-deploy-locally)

# how to check it's tracked?
* adjust something / cause desired state != cluster state
  * _Example:_ [namePrefix](kustomization.yaml)
* | browser,
  * https://localhost:8080/applications/argocd/example.kustomize-guestbook?view=tree&resource=&rollback=-1
    * AFTER reconcile time, 
      * check it's redeployed
      * https://localhost:8080/applications/argocd/example.kustomize-guestbook?view=tree&resource=&rollback=0
