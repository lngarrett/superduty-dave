docker build -t superduty-dave .
docker rm -f superduty-dave
docker run -d \
           --name=superduty-dave \
           --restart=always \
           -p 8087:8080 \
           superduty-dave
