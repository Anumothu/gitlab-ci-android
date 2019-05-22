#
# GitLab CI: Android v0.2
#
# https://hub.docker.com/r/jangrewe/gitlab-ci-android/
# https://git.faked.org/jan/gitlab-ci-android
# Include node js

FROM jangrewe/gitlab-ci-android

RUN apt update \
&& apt install -y \
curl \
gnupg \
gcc \
g++ \
make \
nodejs \
npm \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash - \
&& rm -rf /var/lib/apt/lists/*

RUN npm install -g appcenter-cli

