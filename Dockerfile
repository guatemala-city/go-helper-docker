FROM golang:1.8
RUN go get gopkg.in/yaml.v2
WORKDIR /usr/local/src/env2yaml
CMD ["go", "build"]


ARG JENKINS_URL
ARG NODE_NAME
ARG JOB_NAME
ARG BRANCH_NAME
ARG COMMIT_ID
ARG BUILD_ID

LABEL jenkins.url="${JENKINS_URL}"
LABEL node.name="${NODE_NAME}"
LABEL job.name="${JOB_NAME}"
LABEL branch.name="${BRANCH_NAME}"
LABEL commit.id="${COMMIT_ID}"
LABEL build.id="${BUILD_ID}"
