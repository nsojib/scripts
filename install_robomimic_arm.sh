# sudo apt-get update
# sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
# sudo apt install -y gfortran
# sudo apt-get install libegl1-mesa-dev



# Check if conda is available
if command -v conda >/dev/null 2>&1; then
    echo "Conda is installed and available." 

    conda create -n robomimic_venv python=3.8.0 -y
    conda activate robomimic_venv
    pip3 install torch torchvision torchaudio

    cd ~
    git clone https://github.com/ARISE-Initiative/robomimic.git
    cd robomimic
    pip install -e .

    cd ~
    git clone https://github.com/ARISE-Initiative/robosuite.git
    cd robosuite
    pip install -r requirements.txt

    git checkout v1.4.1


    echo "------------------------- done ------------------------"


else
    echo "Conda is not installed or not in the PATH." 
    echo "-------------------------installing miniconda------------------------"
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh  -O ~/miniconda3/miniconda.sh
    # wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm ~/miniconda3/miniconda.sh


    echo 'source ~/miniconda3/bin/activate' >> ~/.bashrc
    source ~/.bashrc
fi