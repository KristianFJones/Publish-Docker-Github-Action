FROM docker:19.03.1 as runtime
LABEL "com.github.actions.name"="Build, Tag, Publish Docker"
LABEL "com.github.actions.description"="Uses the git branch as the docker tag and pushes the container"
LABEL "com.github.actions.icon"="anchor"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/HurricanKai/Publish-Docker-Github-Action/"
LABEL "maintainer"="Kai Jellinghaus"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
