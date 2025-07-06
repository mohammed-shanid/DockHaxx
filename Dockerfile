FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root

COPY tools.txt /root/tools.txt
COPY setup.sh /root/setup.sh
COPY missions /missions
COPY scripts /scripts

RUN apt update && \
    apt install -y curl gnupg lsb-release && \
    chmod +x /root/setup.sh && \
    /root/setup.sh

CMD ["/bin/bash"]
