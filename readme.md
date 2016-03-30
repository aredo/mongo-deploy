## Deploy

### Prerequisites

1. Ansible 1.9 or higher is required
2. Create `playbooks/files` folder and put ssl certificates there (`app.crt` & `app.key`)

### Installing roles dependencies

```
cd deploy
sudo ansible-galaxy install -r requirements.txt -f
```

## Deploy different mongodb versions

```
./bin/deploy.sh -i hosts/staging -e "env=staging"
```
