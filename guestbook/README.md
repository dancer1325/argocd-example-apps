# how to deploy locally -- via -- Argo CD?
* [follow](../apps/README.md#how-to-deploy-locally)

# how to check it's tracked?
* adjust something / cause desired state != cluster state
  * _Example:_ [replicas](guestbook-ui-deployment.yaml)
* ways
  * | browser,
    * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource=&rollback=-1
      * AFTER reconcile time, 
        * check it's redeployed
        * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource=&rollback=0
  * `kubectl get all -n guestbook`
    * check NUMBER of replicas were modified

# uploading DIRECTLY (WITHOUT pushing | Git) local manifests -- via -- `argocd app sync APPNAME --local ...`
* steps
  * adjust something
    * _Example:_ [replicas](guestbook-ui-deployment.yaml)
  * `kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 -d`
    * get initial admin password
  * `argocd context localhost:8080`
    * switch to Argo CD localhost context
  * `argocd login localhost:8080`
    * login | Argo CD Server
    * user: admin
    * password: initialAdminPassword
  * | this path
    * `argocd app sync example.guestbook --local .`
      * Problems:
        * Problem1: "Cannot use local sync when Automatic Sync Policy is enabled"
          * Solution: 
            * `argocd app set example.guestbook --sync-policy none`
            * `argocd app sync example.guestbook --local .`
  * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource=
    * check the changes are applied DIRECTLY 

# sync
* TODO: 

# application's state | cluster
## locally
* ways to check
  * | Argo CD UI
    * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource=
  * -- via -- Argo CD cli
    * `argocd app get example.guestbook`
  * -- via -- `kubectl`
    * `kubectl get all -n guestbook`
## demo
* [Argo CD UI](https://cd.apps.argoproj.io/applications/argocd/example.guestbook?resource=)

# Sync Status: | sync, live state vs target state
## locally
* ways to check
  * | Argo CD UI
    * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource= > left pannel
  * -- via -- Argo CD cli
    * `argocd app get example.guestbook` 
      * check "STATUS" column
## demo
* [Argo CD UI](https://cd.apps.argoproj.io/applications/argocd/example.guestbook?resource=)

# Sync Operation Status, ALLOWED values: syncing, sync ok, sync error, sync failed, unknown
## locally
* TODO: update to Argo CD v3.4.0
## demo
* [here](https://cd.apps.argoproj.io/applications?proj=&sync=&autoSync=&health=&namespace=&cluster=&labels=&annotations=&operation=)

# refresh

# Health == application's health
## locally
* ways to check
  * | Argo CD UI
    * https://localhost:8080/applications/argocd/example.guestbook?view=tree&resource=
  * -- via -- Argo CD cli
    * `argocd app get example.guestbook`
## demo
* [Argo CD UI](https://cd.apps.argoproj.io/applications/argocd/example.guestbook?resource=)
