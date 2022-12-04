mkdir -p ~/pkg
cd ~/pkg
wget https://download.oracle.com/otn/java/jdk/8u202-b08/1961070e4c9b4e26a04e7f5a083f551e/jdk-8u202-linux-x64.tar.gz?AuthParam=1669967494_5700140293b7cc6e4fc2c9a6299c614a

tar -zxf jdk-8u202-linux-x64.tar.gz
cd jdk1.8.0_202
echo "
# java
export JAVA_HOME=~/pkg/jdk1.8.0_202
export JRE_HOME=${JAVA_HOME}/jre
export PATH=$PATH:${JAVA_HOME}/bin
# gcc, g++ find in dir
export CPLUS_INCLUDE_PATH=$JAVA_HOME/include:${CPLUS_INCLUDE_PATH}
" >> ~/.bashrc