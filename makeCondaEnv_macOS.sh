# Environment Creation Recipe

# Original environment recipe from https://github.com/ShivamShrirao/diffusers/tree/main/examples/dreambooth/DreamBooth_Stable_Diffusion.ipynb
# First line
conda install -c conda-forge diffusers
# Second line
conda install -c anaconda natsort
conda install -c conda-forge accelerate
conda install -c conda-forge bitsandbytes==0.35.0
conda install -c conda-forge ftfy
conda install -c conda-forge google-colab
conda install -c conda-forge gradio
conda install -c conda-forge transformers
conda install -c pytorch torchvision
conda install -c huggingface safetensors
conda install -c xformers xformers

# Attempts at creating an environment by listing all packages beforehand.
# Attempt 1
conda create -n hpdb1 diffusers accelerate bitsandbytes==0.35.0 ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
# Doesn't work. bitsanbytes not found, it's only supported on Linux.

# Attempt 2
conda create -y -n hpdb2 diffusers accelerate ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
conda install -c nvidia cuda-nvcc
git clone https://github.com/phvu/cuda-smi.git
# Doesn't work. cuda-nvcc is not available

# Attempt 3
conda create -y -n hpdb3 cuda-nvcc -c nvidia
# Also doesn't work. Not available

# Attempt 4
conda create -y -n hpdb3 -c "nvidia/label/cuda-11.3.0" cuda-nvcc
# Doesn't work. Not available

# Attempt 5
conda create -y -n hpdb2 diffusers accelerate ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
conda install -c conda-forge gputil
conda install -c pytorch torchvision

# Attempt 6
conda create -y -n hpdb3 diffusers accelerate ftfy gputil gradio transformers natsort safetensors torchvision xformers -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
