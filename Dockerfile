FROM alpine:3.9.4

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN apk update && apk upgrade


RUN apk add --no-cache git curl wget bash 
RUN apk add --no-cache neovim neovim-doc
RUN apk add --no-cache nodejs nodejs-npm

RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY nvim/init.vim /root/.config/nvim/init.vim

RUN nvim -i NONE -c PlugInstall -c quitall

CMD ["nvim"]
