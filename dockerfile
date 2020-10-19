FROM ubuntu:latest
RUN apt-get update -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN mkdir /project
COPY . /project/
RUN mv ./project/chromedriver /usr/bin/
WORKDIR /project/
RUN pip3 install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "/bin/bash", "start.sh" ]
