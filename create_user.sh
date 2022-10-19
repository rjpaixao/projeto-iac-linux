#!/bin/bash

echo "Create Users System...."

useradd guest1 -c "User Guest" -s /bin/bash -m -p $(openssl passwd -1 69884412)
passwd guest1 -e

useradd guest2 -c "User Guest" -s /bin/bash -m -p $(openssl passwd -1 69884412)
passwd guest2 -e

useradd guest3 -c "User Guest" -s /bin/bash -m -p $(openssl passwd -1 69884412)
passwd guest3 -e

 echo "Finish!!!!"
