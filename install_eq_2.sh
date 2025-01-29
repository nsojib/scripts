echo "-------------------------installing mimicgen------------------------"
cd ~
git clone https://github.com/NVlabs/mimicgen_environments.git
cd mimicgen_environments
# This project was developed with Mimicgen v0.1.0. The latest version should work fine, but it is not tested
git checkout 081f7dbbe5fff17b28c67ce8ec87c371f32526a9
pip install -e .

echo "-------------------------installing huggingface_hub fix------------------------"
pip install huggingface_hub==0.25.0

echo "-------------------------half-installing robosuite-task-zoo------------------------"
cd ~
git clone https://github.com/ARISE-Initiative/robosuite-task-zoo
cd robosuite-task-zoo
git checkout 74eab7f88214c21ca1ae8617c2b2f8d19718a9ed
# # NOTE: should remove dependencies in setup.py in the "install_requires" before the last step
# pip install -e .




