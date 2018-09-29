# Oracle's CLI tool - sqlcl

Download the sqlcl tool and place it in the ./download folder in this project.
https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html

├── Dockerfile
├── README.md
├── download
│   └── sqlcl-18.2.0.zip
├── docker-compose.yml
└── scripts
    └── install.sh

- Create alias

```bash
alias sqlcl="docker run -it --rm \
  --network="host" \
  -v `pwd`:/sqlcl \
  bjarteb/oracle-sqlcl:18.2"
```
