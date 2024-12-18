#!/usr/bin/env bash

echo "admin:$(python3 -c 'import bcrypt;print(bcrypt.hashpw("qwe1234abcde".encode(), bcrypt.gensalt()).decode())')"
echo "talos:$(python3 -c 'import bcrypt;print(bcrypt.hashpw("1234abcdeczx".encode(), bcrypt.gensalt()).decode())')"

# admin:qwe1234abcde
# talos:1234abcdeczx