FROM siuyin/ubuntu:build-essential
RUN apt update && apt-get install -y tmux vim
RUN adduser siuyin --disabled-password
WORKDIR /home/siuyin
COPY .vimrc .
USER siuyin
RUN chown -R siuyin:siuyin /home/siuyin
CMD ["bash"]
