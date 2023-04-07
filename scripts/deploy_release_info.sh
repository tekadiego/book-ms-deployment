#!/bin/bash

# Update PATH
PATH=$PATH:/usr/local/bin/
yum install python3-pip -y
yum install git
rm -Rf book-ms || echo "folder already deleted"
rm -Rf /root/deployment || echo "folder already deleted"
git clone https://github.com/tekadiego/book-ms.git