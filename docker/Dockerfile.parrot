FROM parrotsec/metasploit

ARG TZ="UTC"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install --assume-yes --fix-broken \
    && apt-get install --assume-yes --no-install-recommends pipx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pipx install volatility3
ENV PATH="$HOME/.local/bin:$PATH"
