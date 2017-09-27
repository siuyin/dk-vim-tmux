FROM siuyin/ubuntu:build-essential
RUN apt update && apt-get install -y tmux vim
RUN adduser siuyin --disabled-password
WORKDIR /home/siuyin
USER siuyin
COPY .vimrc .
CMD ["bash"]
