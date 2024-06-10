FROM sharelatex/sharelatex:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y texlive-full

# https://www.tug.org/texlive/tlmgr.html
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && bash update-tlmgr-latest.sh

# cost a lot of space, but if you don't install, xelatex can't be used.
RUN tlmgr update --self && tlmgr update --all && tlmgr install scheme-full

EXPOSE 80

ENTRYPOINT ["/sbin/my_init"]
