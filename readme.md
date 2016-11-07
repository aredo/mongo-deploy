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

## Deploy replica sets

Replica set deployments consist two steps:

1. Initialization - setup keys and admin user. For example: ```./bin/init-replica.sh --extra-vars "mongo_version=2.6"```
2. Replica deployment. For example: ```./bin/deploy-replica.sh --extra-vars "mongo_version=2.6"```

Separate configuration file need to be defined for each `mongo_version` and the name should use following
pattern: ```replica-{{mongo_version}}.yml```


Removing replica set and data:

```
./bin/kill-replica.sh --extra-vars "mongo_version=2.6"
```
