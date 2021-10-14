#!/usr/bin/env bash
# https://devopsheaven.com/docker/dockerhub/2018/04/09/delete-docker-image-tag-dockerhub.html

# USERNAME="docker_username"
# PASSWORD="docker_password"
# ORGANIZATION="organization"
# IMAGE="image"
# TAG="tag"

sudo apt-get install -y jq

login_data() {
cat <<EOF
{
  "username": "$USERNAME",
  "password": "$PASSWORD"
}
EOF
}

TOKEN=`curl -s -H "Content-Type: application/json" -X POST -d "$(login_data)" "https://hub.docker.com/v2/users/login/" | jq -r .token`
URL="https://hub.docker.com/v2/repositories/${ORGANIZATION}/${IMAGE}/tags/${TAG}/"
echo "sending request to $URL"

curl $URL \
-X DELETE \
-H "Authorization: JWT ${TOKEN}"

echo "::set-output name=success::true"