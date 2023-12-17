"""
Troubleshoot "train_dreambooth.py" by testing the `DreamBoothDataset` class.
"""

import json

from transformers import CLIPTokenizer

from train_dreambooth import DreamBoothDataset

# `concepts_list`
with open("concepts_list.json", "r") as file:
    concepts_list = json.load(file)

# `tokenizer`
tokenizer = CLIPTokenizer.from_pretrained("runwayml/stable-diffusion-v1-5",
                                          subfolder="tokenizer",
                                          revision="fp16",)

train_dataset = DreamBoothDataset(concepts_list=concepts_list,
                                  tokenizer=tokenizer,
                                  with_prior_preservation=True,
                                  size=512,
                                  center_crop=False,
                                  num_class_images=50,
                                  pad_tokens=False,
                                  hflip=False,
                                  read_prompts_from_txts=False,)
