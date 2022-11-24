FROM sharelatex/sharelatex:latest

RUN apt-get update
RUN apt-get upgrade -y
#RUN apt-get install -y texlive-xetex
#RUN apt-get install -y texlive-xetex texlive-bibtex-extra biber
RUN apt-get install -y texlive-full

RUN tlmgr update --self

# cost a lot of space, but if you don't install, xelatex can't be used.
# RUN tlmgr install scheme-full

# tlmgr info collections
# install different collection
RUN tlmgr install collection-basic collection-bibtexextra collection-binextra  \
    collection-fontsextra collection-formatsextra collection-langchinese collection-langcjk collection-langenglish  \
    collection-latex collection-latexextra collection-latexrecommended collection-luatex collection-mathscience  \
    collection-pictures collection-plaingeneric collection-publishers collection-xetex

RUN tlmgr install environ trimspaces zhnumber ctex needspace xecjk

EXPOSE 80

ENTRYPOINT ["/sbin/my_init"]
