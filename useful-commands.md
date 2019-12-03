# Delete everything, clear console and redeploy!
## "Whoops it broke again"
`gcloud deployment-manager deployments delete production-deploy && clear && gcloud deployment-manager deployments create production-deploy --config config.yaml`
