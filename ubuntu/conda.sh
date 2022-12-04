mkdir -p ~/pkg
cd ~/pkg
wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod 777 Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh  -f -b -p  ~/pkg/miniconda

echo "
# conda
export  PATH=/~/pkg/miniconda/bin:$PATH
" >> ~/.bahsrc
