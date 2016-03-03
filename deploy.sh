docker build -t superduty-dave .
docker rm -f superduty-dave
docker run -d \
           --name=superduty-dave \
           --restart=always \
           -p 80:80 \
           --volume=/var/warehouse/superduty-dave:/data \
           superduty-dave
