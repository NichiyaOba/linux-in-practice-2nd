FROM ubuntu:20.04

# タイムゾーン設定（インタラクティブプロンプトを回避）
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    jq \
    strace \
    ltrace \
    gdb \
    vim \
    less \
    procps \
    iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /workspace

# デフォルトシェルをbashに
CMD ["/bin/bash"]
