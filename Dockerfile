FROM ubuntu:20.04
USER root
RUN apt update 
RUN apt install python3 -y
RUN mkdir test
WORKDIR test/
COPY . ./

RUN chmod u+x /test/entrypoint.sh
RUN chmod 777 /test/entrypoint.sh
RUN dos2unix /test/entrypoint.sh
#define entry point to start this shell once Docker run command is triggered
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]
