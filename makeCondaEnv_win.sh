# Environment Creation Recipe for Windows

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
conda create -n hdbtest1 diffusers accelerate bitsandbytes==0.35.0 ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
# bitsandbytes and xformers not found in channels. Apparently bitsandbytes is not implemented in Windows.

# Attempt 2
conda create -n hdbtest1 diffusers accelerate ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
# Xformers not found in channel

# Attempt 3
conda create -n hdbtest1 accelerate bitsandbytes==0.30 diffusers ftfy gradio google-colab transformers natsort safetensors torchvision xformers==0.0.20 -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
# bitsandbytes and xformers not found in channels

# Attempt 4
conda create -n hdbtest1 accelerate diffusers ftfy gradio google-colab transformers natsort safetensors torchvision xformers==0.0.20 -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
# xformers==0.0.20 not found

# Attempt 5
conda create -n hdbtest1 accelerate diffusers ftfy gradio google-colab transformers natsort safetensors torchvision xformers==0.0.20.post4 -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
# xformers==0.0.20.post4 not found

# Attempt 6
conda create -n hdbtest1 accelerate diffusers ftfy gradio google-colab transformers natsort safetensors torchvision xformers==0.0.22 -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
# xformers==0.0.22 not found

# Attempt 7
conda create -n hdbtest1 xformers -c xformers
# xformers not found

# Attempt 8
conda create -n hdbtest1 xformers==0.0.20 -c xformers
# Not found

# Attempt 8
conda create -n hdbtest1 xformers==0.0.20.post4 -c xformers
# Not found

# Attempt 9
conda create -n hdbtest1 accelerate diffusers ftfy gradio google-colab transformers natsort safetensors torchvision -c anaconda -c conda-forge -c huggingface -c pytorch
conda install -c conda-forge gputil
conda install -c conda-forge tritonclient

# Attempt 10 (Might need to download "libjpg" or "libpng" before torchvision)