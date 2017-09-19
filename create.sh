docker run --detach \
    --hostname gitlab.dataascii.com \
    --publish 443:443 --publish 80:80 --publish 22:22 \
    --name gitlab \
    --restart always \
    --volume /home/nutt/Docker/gitlab/config:/etc/gitlab \
    --volume /home/nutt/Docker/gitlab/logs:/var/log/gitlab \
    --volume /home/nutt/Docker/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
