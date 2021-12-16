if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export GO111MODULE=on
export GOPROXY=https://goproxy.cn
