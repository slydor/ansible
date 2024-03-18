# ansible

## Quick setup

- Full

```sh
ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --ask-become-pass
```

- Just node

```sh
ansible-pull --url https://github.com/slydor/ansible.git --tags node
```

- Example with ssh on specific branch `dev`

```sh
ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --tags ssh --checkout dev
```

- Setup FLS git config

```sh
ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --tags git-fls
```

### Tags

- core _requires --ask-become-pass_
- ssh
- shell
- git
- node _requires --ask-become-pass_
- docker _requires --ask-become-pass_
- git-personal
- git-fls
- dev _requires --ask-become-pass_
- java
- python _requires --ask-become-pass_

## Development

- Have Docker
- Clone
- Use VS Code with extension `Dev Containers`
- In container, use:

```sh
ansible-playbook -t ssh local.yml --ask-vault-pass
```

## Copy this repo

- Clone/fork whatever
- Create own SSH keys using your favorite key gen tool
- Use ansible to encrypt both `id_rsa` and `id_rsa.pub` file. I.e. using this devcontainer, because it contains ansible:

```sh
ansible-vault encrypt .ssh/id_rsa*
```

- Commit the vaulted files in the .ssh directory. Yes, it is fine to commit your private key this way. Vault uses AES256.
- Create vars for git configuration. They are ansible var files in this layout: `<key1>:<value1>\n<key2>:<value2>`. In this specific part they contain `user_name` and `user_email`. Then vault it like it's hot.

```sh
printf 'user_name:"slydor"\nuser_email:"slydor@example.com"\n' > vars/personal-git.yml && ansible-vault encrypt vars/personal-git.yml
```
