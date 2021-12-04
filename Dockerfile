FROM ubuntu:20.04

WORKDIR /data

RUN sudo sh -c "echo 'deb https://gitsecret.jfrog.io/artifactory/git-secret-deb git-secret main' >> /etc/apt/sources.list" && \
      wget -qO - 'https://gitsecret.jfrog.io/artifactory/api/gpg/key/public' | sudo apt-key add - && \
      sudo apt-get update && sudo apt-get install -y git-secret
      
ENTRYPOINT ["git", "secret"]
