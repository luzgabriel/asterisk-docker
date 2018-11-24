FROM ubuntu:18.04
MAINTAINER Gabriel Luz

RUN apt-get -qq update && apt-get -qq install -y \
    build-essential \
    wget \
    libssl-dev \
    libncurses5-dev \
    libnewt-dev \
    libxml2-dev \
    linux-headers-$(uname -r) \
    libsqlite3-dev \
    uuid-dev \
    libelf-dev \
    git \
    make \
    tar \
    uuid-dev \
    libedit-dev \
    libjansson-dev

WORKDIR /tmp/

RUN git clone -b certified/13.21 --depth 1 https://gerrit.asterisk.org/asterisk

WORKDIR /tmp/asterisk

RUN ./configure

RUN make menuselect.makeopts
RUN menuselect/menuselect \
  --disable BUILD_NATIVE \
  --enable cdr_csv \
  --enable chan_sip \
  --enable res_snmp \
  --enable res_http_websocket \
  --enable res_rtp_asterisk \
  menuselect.makeopts

# Continue with a standard make.
RUN make 1> /dev/null
RUN make install 1> /dev/null
RUN make samples 1> /dev/null
WORKDIR /

# Update max number of open files.
RUN sed -i -e 's/# MAXFILES=/MAXFILES=/' /usr/sbin/safe_asterisk
# Set tty
RUN sed -i 's/TTY=9/TTY=/g' /usr/sbin/safe_asterisk

#COPY ./conf /etc/asterisk
