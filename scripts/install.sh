#!/bin/sh

# unzip the tool
unzip /tmp/sqlcl*.zip -d /usr/local
# cleanup
rm -f /tmp/sqlcl*.zip
# rename sql binary to sqlcl (there are other linux packages with the name 'sql' already)
mv /usr/local/sqlcl/bin/sql /usr/local/sqlcl/bin/sqlcl
