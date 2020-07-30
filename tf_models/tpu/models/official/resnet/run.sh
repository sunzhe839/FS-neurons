#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "gpu number needed"
	exit 1
fi



CUDA_VISIBLE_DEVICES=$1 python3 resnet_main.py \
  --resnet_depth=50  \
  --data_dir=/calc/SHARED/imagenet/tf_records/ \
  --model_dir=/calc/stoeckl/binary_populations/checkpoints/resnet50/test_tpu_1 \
  --use_tpu=False \
  --export_dir=/calc/stoeckl/binary_populations/checkpoints/resnet50/test_tpu_1 \
  --train_batch_size=100 \
  --eval_batch_size=100 \
  --num_eval_images=5000 \
  --steps_per_eval=100


