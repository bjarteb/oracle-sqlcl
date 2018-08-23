#!/bin/ash

# unzip the tool
cd /tmp
unzip sqlcl*.zip -d /usr/local

# cleanup
rm -f sqlcl*.zip

# rename sql binary to sqlcl (there are other linux packages with the name 'sql' already)
mv /usr/local/sqlcl/bin/sql /usr/local/sqlcl/bin/sqlcl
