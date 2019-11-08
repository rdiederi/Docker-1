docker run -d --hostname gitlab-sunil.simplylearn.com \
-p 433:433 -p 80:80 -p 2222:22 \
--name gitlab-sunil \
--restart unless-stopped \
--volume /storage/gitlab/config:/etc/gitlab \
--volume /storage/gitlab/logs:/var/log/gitalb \
--volume /storage/gitlab/data:/var/opt/gitalb \
ex03
