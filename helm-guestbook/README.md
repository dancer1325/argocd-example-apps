# how to deploy locally?
* | this path
  * `helm install helm-guestbook .`

# how to check it's tracked?
* [deploy it](#how-to-deploy-locally)
* adjust something / cause desired state != cluster state
  * _Example:_ [replicaCount](values.yaml)
* | browser,
  * https://localhost:8080/applications/argocd/example.helm-guestbook?view=tree&resource=
    * AFTER reconcile time, 
      * check it's redeployed
      * https://localhost:8080/applications/argocd/example.helm-guestbook?view=tree&resource=&rollback=0

# how to uninstall locally?
* `kubectl delete -k .` 