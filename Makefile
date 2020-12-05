
default:

helm.gen: helm.gen.loki helm.gen.promtail

helm.gen.loki:
	helm template helm/loki --set namespace=loki > resources/loki.yml
		 

helm.gen.promtail:
	helm template helm/promtail --set namespace=loki > resources/promtail.yml

dryrun:
	kubectl kustomize resources

apply:
	kubectl apply -k resources

delete:
	kubectl delete -k resources

restart.promtail:
	kubectl delete pod -n loki -l app=promtail