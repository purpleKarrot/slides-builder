FROM debian:sid

RUN buildDeps="ca-certificates curl fontconfig unzip" \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && cd /tmp \
    && curl -SLO https://dl.1001fonts.com/fira-mono.zip \
    && curl -SLO https://dl.1001fonts.com/fira-sans.zip \
    && unzip fira-mono.zip \
    && unzip fira-sans.zip \
    && mkdir -p /usr/share/fonts/truetype/fira \
    && mv -v *.ttf /usr/share/fonts/truetype/fira \
    && mv -v Fira\ Mono/ttf/*.ttf /usr/share/fonts/truetype/fira \
    && fc-cache -fv \
    && apt-get purge --auto-remove -y $buildDeps \
    && rm -rf /tmp/* /var/lib/apt/lists/*

RUN buildDeps="ca-certificates curl" \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && curl -SLO https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb \
    && dpkg -i pandoc-2.7.3-1-amd64.deb \
    && rm -f pandoc-2.7.3-1-amd64.deb \
    && apt-get purge --auto-remove -y $buildDeps \
    && rm -rf /var/lib/apt/lists/*

RUN buildDeps="python-pip python-setuptools python-wheel" \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && pip install pandocfilters \
    && apt-get purge --auto-remove -y $buildDeps \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
        fonts-fantasque-sans \
        fonts-font-awesome \
        ghostscript \
        graphviz \
        lmodern \
        make \
        plantuml \
        texlive-fonts-extra \
        texlive-fonts-recommended \
        texlive-latex-extra \
        texlive-pictures \
        texlive-plain-generic \
        texlive-xetex \
    && rm -rf /var/lib/apt/lists/*
