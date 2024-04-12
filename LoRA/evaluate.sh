CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --model_name_or_path ../ChatGLM2-6b \
    --do_eval \
    --dataset sleep_validate \
    --finetuning_type lora \
    --checkpoint_dir ./lora_model \
    --output_dir evaluate \
    --per_device_eval_batch_size 1 \
    --max_samples 1000 \
    --predict_with_generate