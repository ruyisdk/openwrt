FROM ubuntu:22.04

WORKDIR /workspace

#RUN sed -i "s|archive.ubuntu.com|mirrors.ustc.edu.cn|g" /etc/apt/sources.list
#RUN sed -i "s|security.ubuntu.com|mirrors.ustc.edu.cn|g" /etc/apt/sources.list

RUN apt-get update && \
	apt install -y ack binutils bison build-essential \
	ccache cmake device-tree-compiler flex gawk gettext \
	git gperf intltool libelf-dev libglib2.0-dev \
	libgmp3-dev libltdl-dev libncurses5-dev libssl-dev \
	libreadline-dev libtool wget nano patch sudo \
	pkgconf python3 python3-pyelftools xxd zlib1g-dev \
	subversion swig texinfo unzip rsync

RUN useradd opmk

RUN chown -R opmk:opmk /workspace

COPY build.sh /build.sh

USER opmk

CMD ["bash","-c","/build.sh"]

