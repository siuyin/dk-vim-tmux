FROM siuyin/ubuntu:build-essential
RUN apt update && apt-get install -y tmux vim
RUN adduser siuyin --disabled-password
WORKDIR /home/siuyin
COPY .vimrc .
RUN chown -R siuyin:siuyin /home/siuyin
USER siuyin
CMD ["bash"]
