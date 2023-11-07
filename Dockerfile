FROM ubuntu:20.04
RUN apt update 
RUN apt install python3 -y
WORKDIR /test
COPY main.py ./

RUN chmod u+x /test/entrypoint.sh
RUN chmod 777 /test/entrypoint.sh
RUN dos2unix /test/entrypoint.sh
#define entry point to start this shell once Docker run command is triggered
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]
