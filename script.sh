#!/bin/bash
sudo useradd -d /home/VincentD -m VincentD
sudo usermod -aG sudo VincentD
echo VincentD:tge243 | chpasswd
##Sert a ajouter un nouveau user sudo

## Montrer une addresse IP avant la connection
## source http://offbytwo.com/2008/05/09/show-ip-address-of-vm-as-console-pre-login-message.html
## nom du script : get-ip-address

>>>>>>> Stashed changes
/sbin/ifconfig | grep "inet addr" | grep -v "127.0.0.1" | awk '{ print $2 }' | awk -F: '{ print $2 }'
## sert a print l'addresse ip 




>>>>>>> Stashed changes
if [ "$METHOD" = loopback ]; then
    exit 0
fi

# Only run from ifup.
if [ "$MODE" != start ]; then
    exit 0
fi

cp /etc/issue-standard /etc/issue
/usr/local/bin/get-ip-address >> /etc/issue
echo "" >> /etc/issue

##sert a aller chercher l'ip dans get-ip-address et la montrer pre-login




## cles ssh
ssh-keygen 
##appuyer sur enter

cat "PermitRootLogin no" >> /etc/ssh/sshd_config 
cat "PasswordAuthentication no" >> /etc/ssh/sshd_config 
cat "UsePAM no" >> /etc/ssh/sshd_config 
cat "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config 
##seulement etudiant peut aller ssh :
cat "AllowUsers VincentD >> /etc/ssh/sshd_config 