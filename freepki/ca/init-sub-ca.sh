#!/bin/bash

cp /dev/null /opt/ca/$1/db/$1.db
echo 01 > /opt/ca/$1/db/$1.crt.srl
echo 01 > /opt/ca/$1/db/$1.crl.srl

openssl req -new -config /opt/ca/$1/openssl.cnf -out /opt/ca/$2/share/$1.csr -keyout /opt/ca/$1/private/$1.key