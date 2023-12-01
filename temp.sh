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
conda create -n htestomp2 diffusers accelerate bitsandbytes==0.35.0 ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
# Does not work, "bitsanbytes==0.35.0" not compatible
# Attempt 2
conda create -n htestomp2 diffusers accelerate ftfy gradio transformers natsort safetensors xformers -c conda-forge -c anaconda -c huggingface -c xformers
conda install bitsandbytes==0.35.0
# Does not work. (1) "bitsandbytes" is not available in either its up-to-date version or the version specified (0.35.0). Note the first line took more than 10 minutes to resolve the environment. Note the initial resolve was unsuccessful. (2) Does not include "torchvision", which cannot be installed later.

# Attempt 3
conda create -n htestomp3 accelerate diffusers ftfy gradio google-colab transformers natsort safetensors torchvision xformers -c anaconda -c conda-forge -c huggingface -c pytorch -c xformers
conda install bitsandbytes==0.35.0
# Does not work. (1) "bitsandbytes" is not available in either its up-to-date version or the version specified (0.35.0, line 2). Note the first line took more than 33 minutes to resolve the environment. Note the initial resolve was unsuccessful. (2) After resolving, the environment is created, but there are clogger errors (see https://github.com/conda/conda/issues/7038). The recommended solution is to run `conda clean --all` and try again.

# Attempt 4
conda create -n htestomp4 python==3.10
pip install --user git+https://github.com/ShivamShrirao/diffusers accelerate bitsandbytes==0.35.0 ftfy gradio google-colab transformers natsort safetensors torchvision xformers
# Waiting results on Google Colab