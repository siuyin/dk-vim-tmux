FROM siuyin/ubuntu:build-essential
RUN apt update && apt-get install -y tmux vim
RUN useradd siuyin --disabled-password
USER siuyin
CMD ["bash"]
