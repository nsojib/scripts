sudo apt-get update
sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
sudo apt install -y gfortran
sudo apt-get install libegl1-mesa-dev


git clone https://github.com/nsojib/equidiff.git
cd equidiff

conda env create -f conda_environment.yaml --solver=libmamba -y
conda activate equidiff

