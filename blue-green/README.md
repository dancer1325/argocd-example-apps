# Blue Green

* goal
  * ⭐️how to implement blue-green deployment -- via -- [Argo Rollouts](https://github.com/argoproj/argo-rollouts)⭐️

* blue green strategy
  * ❌NOT supported -- by -- built-in Kubernetes Deployment❌ 
    * 👀if you want to add it -> -- via -- third-party Kubernetes controller👀
    
* steps
  * [install Argo Rollouts controller](https://github.com/argoproj/argo-rollouts#installation)
  * `argocd app create --name blue-green --repo https://github.com/argoproj/argocd-example-apps --dest-server https://kubernetes.default.svc --dest-namespace default --path blue-green`
    * create a SAMPLE application
  * `argocd app sync blue-green`
    * sync the application
      * | being synced, you can access -- via -- `blue-green-helm-guestbook` service
  * change image version parameter -- to -- trigger blue-green deployment process
    * `argocd app set blue-green -p image.tag=0.2 && argocd app sync blue-green`
    * -> the application runs SIMULTANEOUSLY `ks-guestbook-demo:0.1` & `ks-guestbook-demo:0.2`
      * `ks-guestbook-demo:0.2`
        * == `blue`
        * AVAILABLE ONLY -- via -- preview service `blue-green-helm-guestbook-preview`
  * promote `ks-guestbook-demo:0.2` -- to -- `green` + delete OLD replica / runs `ks-guestbook-demo:0.1`
    * `argocd app patch-resource blue-green --kind Rollout --resource-name blue-green-helm-guestbook --patch '{ "status": { "verifyingPreview": false } }' --patch-type 'application/merge-patch+json'`
    * delete OLD replica -- thanks to -- `Rollout` 
