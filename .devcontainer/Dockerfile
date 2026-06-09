# Use the official Microsoft Dev Container base image for Debian Trixie.
# Trixie includes tex-fmt which is convenient for LaTeX development.
FROM mcr.microsoft.com/devcontainers/base:trixie

# Install uv for everyone not just the current user.
RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
    && cp /root/.local/bin/uv /usr/local/bin/uv

# Install utilities, R and LaTeX.
RUN apt --quiet update \
    && apt install --assume-yes \
        cargo \
        just \
        latexmk \
        pandoc \
        r-base \
        r-base-dev \
        r-cran-knitr \
        r-cran-rmarkdown \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-extra-utils \ 
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# Install nuweb for literate programming.
COPY .devcontainer/nuweb-1.64.tar /tmp/
WORKDIR /tmp
RUN tar -xf nuweb-1.64.tar \
    && cd nuweb-1.64 \
    && make nuweb \
    && install -m 755 nuweb /usr/local/bin/nuweb \
    && rm -rf /tmp/nuweb-1.64 /tmp/nuweb-1.64.tar

# Add some labels so it looks nice in Github packages.
LABEL org.opencontainers.image.source=https://github.com/joejcollins/buck-rogers
LABEL org.opencontainers.image.title="buck-rogers image"
LABEL org.opencontainers.image.description="Literate programming environment."
LABEL org.opencontainers.image.authors="Joe J Collins <joejcollins@gmail.com>"
