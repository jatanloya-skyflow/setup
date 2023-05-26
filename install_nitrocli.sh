#!/bin/bash
echo "Running setup script"
echo "Installing Nitro CLI (Only works on Amazon Linux 2"
sudo amazon-linux-extras install aws-nitro-enclaves-cli -y
sudo yum install aws-nitro-enclaves-cli-devel -y
sudo usermod -aG ne ec2-user
sudo usermod -aG docker ec2-user
nitro-cli --version
echo "Change config in /etc/nitro_enclaves/allocator.yaml"

