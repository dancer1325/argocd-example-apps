# ArgoCD Example Apps

* goal
  * demoing ArgoCD functionality

| Application | Description |
|-------------|-------------|
| [guestbook](guestbook/) | A hello word guestbook app as plain YAML |
| [guestbook-with-sub-directories](guestbook-with-sub-directories/) | A hello word guestbook app as plain YAML organized by subdirectories |
| [ksonnet-guestbook](ksonnet-guestbook/) | The guestbook app as a ksonnet app |
| [helm-guestbook](helm-guestbook/) | The guestbook app as a Helm chart |
| [jsonnet-guestbook](jsonnet-guestbook/) | The guestbook app as a raw jsonnet |
| [jsonnet-guestbook-tla](jsonnet-guestbook-tla/) | The guestbook app as a raw jsonnet with support for top level arguments |
| [kustomize-guestbook](kustomize-guestbook/) | The guestbook app as a Kustomize 2 app |
| [pre-post-sync](pre-post-sync/) | Demonstrates Argo CD PreSync and PostSync hooks |
| [sync-waves](sync-waves/) | Demonstrates Argo CD sync waves with hooks |
| [helm-dependency](helm-dependency/) | Demonstrates how to customize an OTS (off-the-shelf) helm chart from an upstream repo |
| [sock-shop](sock-shop/) | A microservices demo app (https://microservices-demo.github.io) |
| [plugins](plugins/) | Apps which demonstrate config management plugins usage |
| [blue-green](blue-green/) | Demonstrates how to implement blue-green deployment using [Argo Rollouts](https://github.com/argoproj/argo-rollouts)
| [apps](apps/) | An app composed of other apps |

## Requirements
* follow [this](https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd)
