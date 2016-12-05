FROM openjdk:8

RUN \
  #install dependencies
  apt-get update && \
  apt-get install -y \
    python \
    g++ \
    build-essential && \

  #install node.js
  curl -sL https://deb.nodesource.com/setup_6.x | bash && \
  apt-get install -y nodejs && \

  # upgrade npm
  npm install -g npm && \

  # install yeoman bower gulp yarn
  npm install -g \
    yo \
    bower \
    gulp-cli \
    yarn && \

  echo '{ "allow_root": true }' > /root/.bowerrc
