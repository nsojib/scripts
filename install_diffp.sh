# git clone https://github.com/real-stanford/diffusion_policy.git
git clone https://github.com/nsojib/diffusion_policy.git

cd diffusion_policy

mkdir data && cd data
wget https://diffusion-policy.cs.columbia.edu/data/training/pusht.zip
unzip pusht.zip && rm -f pusht.zip && cd ..

conda env create -f conda_environment.yaml solver=libmamba

conda activate robodiff
pip install huggingface_hub==0.25.0

sudo apt install -y libosmesa6-dev libglfw3 patchelf
sudo apt install -y libgl1-mesa-glx

