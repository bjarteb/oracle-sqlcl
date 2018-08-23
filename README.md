# Oracle's new CLI tool - sqlcl

Download the sqlcl binary form otn.oracle.com and place it in the /bin folder.

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
