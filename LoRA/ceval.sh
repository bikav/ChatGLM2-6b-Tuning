CUDA_VISIBLE_DEVICES=0 python src/evaluate.py \
    --model_name_or_path THUDM/chatglm2-6b \
    --adapter_name_or_path ./lora_model \
    --template vanilla \
    --finetuning_type lora \
    --task ceval \
    --split validation \
    --lang zh \
    --n_shot 5 \
    --batch_size 2