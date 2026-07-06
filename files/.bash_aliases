alias Up="sudo apt update && sudo apt upgrade -y --allow-downgrades"

alias Git-FLS='ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --tags git-fls && git config --global --list'
alias Git-Slydor='ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --tags git-personal && git config --global --list'

alias Poseidon='aws sso login --profile aws-poseidon && aws eks update-kubeconfig --name poseidon --profile aws-poseidon'
alias Zeus='aws sso login --profile aws-zeus && aws eks update-kubeconfig --name zeus --profile aws-zeus'

# Switch primary virtual Citrix monitor since Citrix fucks up the order of them all the time.
# This is a function and not an alias because I like to pass the ID as parameter.
Ctx() { sudo xrandr --output "ctx-monitor-$1" --primary; }
