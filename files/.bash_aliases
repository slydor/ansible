alias Up="sudo apt update && sudo apt upgrade -y"

alias Poseidon='aws sso login --profile eks-dev-developer && aws eks update-kubeconfig --name poseidon --profile eks-dev-developer'
alias PoseidonAdmin='aws sso login --profile eks-dev-admin && aws eks update-kubeconfig --name poseidon --profile eks-dev-admin'

# Switch primary virtual Citrix monitor since Citrix fucks up the order of them all the time.
# This is a function and not an alias because I like to pass the ID as parameter.
Ctx() { sudo xrandr --output "ctx-monitor-$1" --primary; }
