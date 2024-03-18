alias Up="sudo apt update && sudo apt upgrade -y"

alias Poseidon='aws sso login --profile eks-dev-developer && aws eks update-kubeconfig --name poseidon --profile eks-dev-developer'
alias PoseidonAdmin='aws sso login --profile eks-dev-admin && aws eks update-kubeconfig --name poseidon --profile eks-dev-admin'
