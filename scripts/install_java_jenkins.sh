sudo apt update
sudo apt install openjdk-17-jdk -y
java -version
javac -version

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins

sudo cp /var/lib/jenkins/secrets/initialAdminPassword /home/ubuntu
sudo chown ubuntu:ubuntu /home/ubuntu/initialAdminPassword