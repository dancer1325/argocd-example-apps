# how to deploy locally?
## requirements
* install Argo CD locally | namespace argocd
## steps
* | this path,
  * `helm install apps . --namespace argocd`
    * Note: " warnings.go:110] "Warning: metadata.finalizer"
      * ONLY warning
      * Reason:🧠NOT follow Kubernetes conventions🧠
      * SOLUTION: replace finalizer structure
    * `kubectl get application -n argocd`
      * check Argo CD Applications are installed

# how to uninstall locally?
* `helm uninstall apps --namespace argocd`

# structure
* TODO: add diagram of ALL apps with ALL namespaces installed