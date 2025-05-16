#!/bin/bash
openssl ca -config /opt/ca/$1/openssl.cnf -in /opt/ca/$1/share/$2.csr -out /opt/ca/$1/share/$2.crt -extensions $3 -days $4
