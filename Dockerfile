FROM ubuntu:20.04
USER root
RUN apt update 
RUN apt install python3 -y
RUN apt-get install bash
RUN mkdir test
WORKDIR test/
COPY . ./

RUN chmod u+x /test/entrypoint.sh
RUN chmod 777 /test/entrypoint.sh
#define entry point to start this shell once Docker run command is triggered
#ENTRYPOINT ["/bin/bash","./entrypoint.sh"]
ENTRYPOINT ["/bin/bash","./entrypoint.sh"]
