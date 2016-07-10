## BUILDING
##   (from project root directory)
##   $ docker build -t lamour1314-txt2vec .
##
## RUNNING
##   $ docker run lamour1314-txt2vec

FROM gcr.io/stacksmith-images/ubuntu:14.04-r07

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="afbd7b9" \
    STACKSMITH_STACK_NAME="lamour1314/Txt2Vec" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.0_91-0 --checksum 64cf20b77dc7cce3a28e9fe1daa149785c9c8c13ad1249071bc778fa40ae8773

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app
