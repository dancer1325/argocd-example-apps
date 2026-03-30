# how to deploy locally?
* | this path
  * `kubectl apply -k .`

# how to check it's tracked?
* [deploy it](#how-to-deploy-locally)
* adjust something / cause desired state != cluster state
  * _Example:_ [namePrefix](kustomization.yaml)

# how to uninstall locally?
* `kubectl delete -k .` 