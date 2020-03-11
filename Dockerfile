FROM gitpod/workspace-full

USER root

RUN sudo apt-get update && \
    sudo apt-get install libnss3-dev && \
    sudo apt-get update && \
    sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4 && \
    sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add && \
    sudo echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    sudo apt-get -y update && \
    wget https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar && \
    wget http://www.java2s.com/Code/JarDownload/testng/testng-6.8.7.jar.zip && \
    unzip testng-6.8.7.jar.zip && \
    sudo apt-get -y install google-chrome-stable && \
    wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    sudo mv chromedriver /usr/bin/chromedriver && \
    sudo chown root:root /usr/bin/chromedriver && \
    sudo chmod +x /usr/bin/chromedriver

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
