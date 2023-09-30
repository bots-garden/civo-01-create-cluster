FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get install gettext -y  && \
    sudo apt-get install -y sshpass && \
    brew install derailed/k9s/k9s && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

USER gitpod

RUN brew install exa && \
    brew install bat && \
    brew install httpie && \
    brew install hey
