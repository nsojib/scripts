# sudo apt-get update
# sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
# sudo apt install -y gfortran
# sudo apt-get install libegl1-mesa-dev



# Check if conda is available
if command -v conda >/dev/null 2>&1; then
    echo "Conda is installed and available." 

    echo "-------------------------installing equidiff------------------------"

    git clone https://github.com/pointW/equidiff.git
    cd equidiff

    conda env create -f conda_environment.yaml --solver=libmamba -y
    conda activate equidiff

    conda activate equidiff

    echo "-------------------------installing mimicgen------------------------"
    cd ..
    git clone https://github.com/NVlabs/mimicgen_environments.git
    cd mimicgen_environments
    # This project was developed with Mimicgen v0.1.0. The latest version should work fine, but it is not tested
    git checkout 081f7dbbe5fff17b28c67ce8ec87c371f32526a9
    pip install -e .
    cd ../equidiff


    echo "-------------------------installing huggingface_hub fix------------------------"
    pip install huggingface_hub==0.25.0

    echo "------------------------- done ------------------------"


else
    echo "Conda is not installed or not in the PATH." 
    echo "-------------------------installing miniconda------------------------"
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm ~/miniconda3/miniconda.sh


    echo 'source ~/miniconda3/bin/activate' >> ~/.bashrc
    source ~/.bashrc
fi

 


# wget https://universitysystemnh-my.sharepoint.com/:u:/g/personal/mb1215_usnh_edu/EQFhCnDeNTJNio5Kt9OdurIBTrMvzHeF_qyMq1C1W3HUkA?download=1 -O mug124_0ind_abs.hdf5


#wget https://huggingface.co/datasets/amandlek/mimicgen_datasets/resolve/main/core/square_d0.hdf5
#wget https://huggingface.co/datasets/amandlek/mimicgen_datasets/resolve/main/source/square.hdf5

python dataset_states_to_obs.py --input /home/ubuntu/equidiff/data/square.hdf5 --output /home/ubuntu/equidiff/data/square.hdf5 --num_workers=24

