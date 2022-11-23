FROM sharelatex/sharelatex:latest

RUN tlmgr update --self

# cost a lot of space, but if you don't install, xelatex can't be used.
# RUN tlmgr install scheme-full

# just install xetex
RUN tlmgr install xetex

EXPOSE 80

ENTRYPOINT ["/sbin/my_init"]
