# ArgoCD Example Apps

TODO: clean as soon as I update next table

| Application                                                       | Description |
|-------------------------------------------------------------------|-------------|
| [guestbook-with-sub-directories](guestbook-with-sub-directories/) | A hello word guestbook app as plain YAML organized by subdirectories |
| [ksonnet-guestbook](ksonnet-guestbook/)                           | The guestbook app as a ksonnet app |
| [jsonnet-guestbook](jsonnet-guestbook/)                           | The guestbook app as a raw jsonnet |
| [jsonnet-guestbook-tla](jsonnet-guestbook-tla/)                   | The guestbook app as a raw jsonnet with support for top level arguments |
| [pre-post-sync](pre-post-sync/)                                   | Demonstrates Argo CD PreSync and PostSync hooks |
| [sync-waves](sync-waves/)                                         | Demonstrates Argo CD sync waves with hooks |
| [helm-dependency](helm-dependency/)                               | Demonstrates how to customize an OTS (off-the-shelf) helm chart from an upstream repo |
| [sock-shop](sock-shop/)                                           | A microservices demo app (https://microservices-demo.github.io) |
| [plugins](plugins/)                                               | Apps which demonstrate config management plugins usage |
| [blue-green](blue-green/)                                         | Demonstrates how to implement blue-green deployment using [Argo Rollouts](https://github.com/argoproj/argo-rollouts)




| Demo Status                                                               | Application                                        | Description                                                                                                              |
|---------------------------------------------------------------------------| -------------------------------------------------- |--------------------------------------------------------------------------------------------------------------------------|
| [![App Status][badge_sync_example_apps]][app_sync_example_apps]           | [apps](apps/)                                      | App of OTHER apps (REST of folders) <br/> customized -- via -- helm                                                      |
| [![App Status][badge_blue_green]][app_blue_green]                         | [blue-green](blue-green/)                          | Demonstrates how to implement blue-green deployment using [Argo Rollouts](https://github.com/argoproj/argo-rollouts)     |
| [![App Status][badge_guestbook]][app_guestbook]                           | [guestbook](guestbook/)                            | hello word guestbook app -- as -- plain YAML                                                                             |
| [![App Status][badge_helm_dependency]][app_helm_dependency]               | [helm-dependency](helm-dependency/)                | Demonstrates how to customize an OTS (off-the-shelf) helm chart from an upstream repo                                    |
| [![App Status][badge_helm_guestbook]][app_helm_guestbook]                 | [helm-guestbook](helm-guestbook/)                  | guestbook app -- as a -- Helm chart                                                                                      |
| [![App Status][badge_helm_hooks]][app_helm_hooks]                         | [helm-hooks](helm-hooks/)                          | An application with native Helm hooks                                                                                    |
| [![App Status][badge_jsonnet_guestbook]][app_jsonnet_guestbook]           | [jsonnet-guestbook](jsonnet-guestbook/)            | The guestbook app as a raw jsonnet                                                                                       |
| [![App Status][badge_jsonnet_guestbook_tla]][app_jsonnet_guestbook_tla]   | [jsonnet-guestbook-tla](jsonnet-guestbook-tla/)    | The guestbook app as a raw jsonnet with support for top level arguments                                                  |
| [![App Status][badge_kustomize_guestbook]][app_kustomize_guestbook]       | [kustomize-guestbook](kustomize-guestbook/)        | guestbook app -- as a -- Kustomize app                                                                                   |
| [![App Status][badge_plugin_kasane]][app_plugin_kasane]                   | [plugins/kasane](plugins/kasane)                   | Apps which demonstrate config management plugins usage with [kasane](plugins/kasane/README.md)                           |
| [![App Status][badge_plugin_kustomized_helm]][app_plugin_kustomized_helm] | [plugins/kustomized-helm](plugins/kustomized-helm) | Apps which demonstrate config management plugins usage with a [kustomized helm chart](plugins/kustomized-helm/README.md) |
| [![App Status][badge_pre_post_sync]][app_pre_post_sync]                   | [pre-post-sync](pre-post-sync/)                    | Demonstrates Argo CD PreSync and PostSync hooks                                                                          |
| [![App Status][badge_sock_shop]][app_sock_shop]                           | [sock-shop](sock-shop/)                            | A microservices demo app (https://microservices-demo.github.io)                                                          |
| [![App Status][badge_sync_waves]][app_sync_waves]                         | [sync-waves](sync-waves/)                          | Demonstrates Argo CD sync waves with hooks                                                                               |

[app_sync_example_apps]: https://cd.apps.argoproj.io/applications/sync-example-apps
[badge_sync_example_apps]: https://cd.apps.argoproj.io/api/badge?revision=true&name=sync-example-apps
[app_blue_green]: https://cd.apps.argoproj.io/applications/example.blue-green
[badge_blue_green]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.blue-green
[app_guestbook]: https://cd.apps.argoproj.io/applications/example.guestbook
[badge_guestbook]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.guestbook
[app_helm_dependency]: https://cd.apps.argoproj.io/applications/example.helm-dependency
[badge_helm_dependency]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.helm-dependency
[app_helm_guestbook]: https://cd.apps.argoproj.io/applications/example.helm-guestbook
[badge_helm_guestbook]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.helm-guestbook
[app_helm_hooks]: https://cd.apps.argoproj.io/applications/example.helm-hooks
[badge_helm_hooks]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.helm-hooks
[app_jsonnet_guestbook]: https://cd.apps.argoproj.io/applications/example.jsonnet-guestbook
[badge_jsonnet_guestbook]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.jsonnet-guestbook
[app_jsonnet_guestbook_tla]: https://cd.apps.argoproj.io/applications/example.jsonnet-guestbook-tla
[badge_jsonnet_guestbook_tla]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.jsonnet-guestbook-tla
[app_kustomize_guestbook]: https://cd.apps.argoproj.io/applications/example.kustomize-guestbook
[badge_kustomize_guestbook]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.kustomize-guestbook
[app_plugin_kasane]: https://cd.apps.argoproj.io/applications/example.plugin-kasane
[badge_plugin_kasane]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.plugin-kasane
[app_plugin_kustomized_helm]: https://cd.apps.argoproj.io/applications/example.plugin-kustomized-helm
[badge_plugin_kustomized_helm]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.plugin-kustomized-helm
[app_pre_post_sync]: https://cd.apps.argoproj.io/applications/example.pre-post-sync
[badge_pre_post_sync]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.pre-post-sync
[app_sock_shop]: https://cd.apps.argoproj.io/applications/example.sock-shop
[badge_sock_shop]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.sock-shop
[app_sync_waves]: https://cd.apps.argoproj.io/applications/example.sync-waves
[badge_sync_waves]: https://cd.apps.argoproj.io/api/badge?revision=true&name=example.sync-waves

## how to run locally?
### Requirements
* [install Argo CD](https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd)
  * install | argocd
* Argo CD UI port forward
  * `kubectl port-forward service/argocd-server -n argocd 8080:443`
  * `kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`
    * get INITIAL admin password
* | browser,
  * http://localhost:8080
    * user: admin
    * password: initialAdminPassword

### steps
* [deploy Argo CD Application](apps)
