FROM texlive/texlive

WORKDIR /opt/cv

CMD ["bash", "-c", "make clean && make"]
