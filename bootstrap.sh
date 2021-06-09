#!/usr/bin/env bash

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

## print servers IP address
tput setaf 4; echo "The IP of the host $(hostname) is $(hostname -I | awk '{print $2}')"
tput setaf 4; echo "To verify please browse to http://$(hostname -I | awk '{print $2}')/$(hostname).html

## generate server identified html file
cat <<EOF > /var/www/$(hostname).html
<html>
<body>
<p>hostname is: $(hostname)</p>
</body>
</html>
EOF

