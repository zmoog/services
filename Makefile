# ==============================================================================
# Define dependencies

KIND            := kindest/node:v1.29.1@sha256:a0cc28af37cf39b019e2b448c54d1a3f789de32536cb5a5db61a49623e527144
KIND_CLUSTER    := dev


# =============================================================================
# Running from within k8s/kind

dev-up:
	kind create cluster \
		--image=${KIND} \
		--name=${KIND_CLUSTER} \
		--config=zarf/k8s/dev/kind-config.yaml

dev-down:
	kind delete cluster --name ${KIND_CLUSTER}
