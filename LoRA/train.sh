CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
    --stage sft \
    --model_name_or_path THUDM/chatglm2-6b \
    --do_train \
    --dataset sleep \
    --finetuning_type lora \
    --output_dir lora_model \
    --per_device_train_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 50 \
    --learning_rate 1e-5 \
    --num_train_epochs 10.0 \
    --fp16