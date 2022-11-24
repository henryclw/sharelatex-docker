FROM sharelatex/sharelatex:latest

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y texlive-full

RUN tlmgr update --self

# cost a lot of space, but if you don't install, xelatex can't be used.
RUN tlmgr install scheme-full

EXPOSE 80

ENTRYPOINT ["/sbin/my_init"]
