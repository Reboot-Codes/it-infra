# I.T. Infra 2 - Electric Boogaloo

Something-something-server-configs.

Currently done:

- `website`
- `git`
- `games`
- `reverseproxy`

## Setup

Assuming your containers are setup correctly... Make a copy of `./default.vars.yml`, name it `./vars.yml`, and fill it out. Then run `./setup.sh`.

## Updates

After pulling the latest version of this repository, check `./default.vars.yml` against `./vars.yml`, update with any missing fields, then run `update.sh`.

## Maintenance

### Service Down

Run the following, replacing `$service` with the name of the service you'd like to bring down.

```bash
ansible-playbook ./containers/$service/down.playbook.yml --vars "@./vars.yml"
```

### All Services Down

Run `down.sh`.

### Service Up

Run the following, replacing `$service` with the name of the service you'd like to bring up.

```bash
ansible-playbook ./containers/$service/up.playbook.yml --vars "@./vars.yml"
```

### All Services Up

Run `up.sh`.
