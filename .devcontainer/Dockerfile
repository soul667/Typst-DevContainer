FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    unzip \
    fontconfig \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Install Typst
RUN curl -LO https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz \
    && tar -xf typst-x86_64-unknown-linux-musl.tar.xz \
    && mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/ \
    && rm -rf typst-x86_64-unknown-linux-musl*

# Create a non-root user
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Install some fonts
RUN mkdir -p /usr/share/fonts/truetype/noto \
    && curl -L https://github.com/notofonts/noto-fonts/raw/main/hinted/ttf/NotoSans/NotoSans-Regular.ttf \
        -o /usr/share/fonts/truetype/noto/NotoSans-Regular.ttf \
    && curl -L https://github.com/notofonts/noto-cjk/raw/main/Sans/OTF/Japanese/NotoSansCJKjp-Regular.otf \
        -o /usr/share/fonts/truetype/noto/NotoSansCJKjp-Regular.otf \
    && fc-cache -f -v \
    && apt-get install fonts-noto-cjk

USER $USERNAME
