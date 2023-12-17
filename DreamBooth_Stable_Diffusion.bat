set MODEL_NAME="runwayml/stable-diffusion-v1-5"
set INSTANCE_DIR="training data\instance\zwx"
set OUTPUT_DIR="content\stable_diffusion_weights\zwx"
echo %date% %time%
python train_dreambooth.py ^
--pretrained_model_name_or_path=%MODEL_NAME% ^
--instance_data_dir=%INSTANCE_DIR% ^
--output_dir=%OUTPUT_DIR% ^
--pretrained_vae_name_or_path="stabilityai/sd-vae-ft-mse" ^
--revision="fp16" ^
--with_prior_preservation --prior_loss_weight=1.0 ^
--seed=1337 ^
--resolution=512 ^
--train_batch_size=1 ^
--train_text_encoder ^
--mixed_precision="fp16" ^
--gradient_accumulation_steps=1 ^
--learning_rate=1e-6 ^
--lr_scheduler="constant" ^
--lr_warmup_steps=0 ^
--num_class_images=50 ^
--sample_batch_size=4 ^
--max_train_steps=800 ^
--save_interval=10000 ^
--save_sample_prompt="photo of zwx dog" ^
--concepts_list="concepts_list.json"
echo %date% %time%