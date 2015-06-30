FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    make \
    texlive-xetex \
    texlive-latex-recommended \
    texlive-lang-german \
    texlive-latex-extra

# maybe the fonts can be published in the repo directly?
RUN apt-get update && apt-get install -y \
    wget \
    unzip
ENV EUROSTILE_FONTS_DIR /usr/share/fonts/truetype/EurostileLTStd
RUN mkdir -p $EUROSTILE_FONTS_DIR && \
    wget -O $EUROSTILE_FONTS_DIR/font.zip \
        https://public.centerdevice.de/download/fabd322d-bc1d-4b1b-bcae-c6dd2426660f.b89bbafa-7f0d-417e-9b4b-e73d32cf4bdf && \
    unzip $EUROSTILE_FONTS_DIR/font.zip -d $EUROSTILE_FONTS_DIR && \
    rm $EUROSTILE_FONTS_DIR/font.zip

ADD . /opt

WORKDIR /opt

CMD ["make", "cv"]
