# README.md

## Links

* <https://github.com/devinsolutions/docker-osticket>
* <https://github.com/devinsolutions/osTicket-plugins>
* <https://github.com/clonemeagain>

## Quick Start

```bash
cp .env.example .env
docker-compose -f docker-compose-init.yml run --rm osticket-app
docker-compose --compatibility up -d; docker-compose logs -ft --tail=35
```

Wait for the installation to complete then browse to your osTicket staff control panel at
`http://localhost:5335/scp/`. Login with default admin user & password:

* username: **ostadmin**
* password: **Ad!in1**

## Cleanup osTicket tables when a ticket is deleted

```bash
#Edit password in cleanup_ticketsdeleted.sh
./cleanup_ticketsdeleted.sh
```
