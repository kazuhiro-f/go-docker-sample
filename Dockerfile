# 2021/02/08最新version
FROM golang:1.15.8

# コンテナ内にディレクトリを作成
# エイリアスの定義
RUN mkdir /go/src/go-docker-sample \
	&& alias ll='ls -al'

#コンテナログイン時のディレクトリを設定
WORKDIR /go/src/go-docker-sample

#ホストのファイルをコンテナにコピー
ADD . /go/src/go-docker-sample
