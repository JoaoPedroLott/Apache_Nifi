# Use Apache NiFi image
FROM apache/nifi:2.0.0-M1

# Set the user to root
USER root

# Update package list
RUN apt-get update 

# Install necessary packages
RUN apt-get -y install sudo wget apt-transport-https gnupg python3 python3-pip

# Cleanup
RUN apt-get -y --purge autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install -r requirements.txt 

# Install rar
RUN wget https://www.rarlab.com/rar/rarlinux-x64-612.tar.gz && \
    tar -zxvf rarlinux-x64-612.tar.gz && \
    cd rar && \
    make && \
    mv rar /usr/local/bin/rar

# Set the working directory
WORKDIR /opt/nifi/nifi-current

# Set the user to nifi
USER nifi