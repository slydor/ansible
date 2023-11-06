# ansible

## Quick setup

- Full

```sh
ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git
```

- Just node

```sh
ansible-pull --url https://github.com/slydor/ansible.git --tags node
```

- Example with ssh on specific branch `dev`

```sh
ANSIBLE_ASK_VAULT_PASS=True ansible-pull --url https://github.com/slydor/ansible.git --tags ssh --checkout dev
```

### Tags

```
ssh
```

```
node
```
