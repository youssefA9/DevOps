FROM ubuntu:20.04
RUN apt update 
RUN apt install python3 -y
WORKDIR /test
COPY main.py ./
CMD ["python3", "main.py"]
