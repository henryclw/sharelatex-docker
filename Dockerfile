FROM sharelatex/sharelatex:latest

RUN tlmgr update --self

# cost a lot of space, but if you don't install, xelatex can't be used.
# RUN tlmgr install scheme-full

# tlmgr info collections
# install different collection
RUN tlmgr install collection-basic collection-bibtexextra collection-binextra collection-fontsextra collection-formatsextra collection-langchinese collection-langcjk collection-langenglish collection-latex collection-latexextra collection-latexrecommended collection-luatex collection-mathscience collection-pictures collection-plaingeneric collection-publishers collection-xetex

EXPOSE 80

ENTRYPOINT ["/sbin/my_init"]
