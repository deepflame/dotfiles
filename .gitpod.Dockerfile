FROM gitpod/workspace-full

USER root
# Install custom tools, runtime, etc.
RUN add-apt-repository ppa:lazygit-team/release
RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update && apt-get install -y \
        lazygit \
        neovim \
        tmux \
        vim \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
# ENV ...

# Give back control
USER root
