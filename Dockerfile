FROM siuyin/ubuntu:build-essential
RUN apt update && apt-get install -y tmux vim
CMD ["bash"]
