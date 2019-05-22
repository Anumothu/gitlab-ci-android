#
# GitLab CI: Android v0.2
#
# https://hub.docker.com/r/jangrewe/gitlab-ci-android/
# https://git.faked.org/jan/gitlab-ci-android
#

FROM jangrewe/gitlab-ci-android

RUN apt update \
&& apt install -y \
curl \
gnupg \
gcc \
g++ \
make \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash - \
&& apt install -y nodejs \
&& apt install -y npm \
&& npm install -g appcenter-cli \ 
&& rm -rf /var/lib/apt/lists/*

