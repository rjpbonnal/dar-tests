FROM debian:bookworm

CMD ["bash"]

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/bookworm-backports.list &&\
    apt-get update -y &&\
    apt-get install -y \
    doxygen \
    git \
    graphviz \
    man \
    par2 \
    pigz \
    readline-doc \
    time \
    wget &&\
    apt-get install -y \
                    -t bookworm-backports \
                    dar \
                    dar-docs &&\
    apt-get clean -y autoclean &&\
    apt-get autoremove -y &&\
rm -rf /var/lib/{apt,dpkg,cache,log}/
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD ["/bin/bash"]
