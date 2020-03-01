#!/bin/bash

#CUDA_VISIBLE_DEVICES=4,5,6,7 python train.py --epochs 150 --ndf 192 --n_rkhs 1536 --batch_size 480 --tclip 20.0 --n_depth 8 --dataset IN128 --input_dir /root/usr0_data/ImageNet_Data/CLS-LOC --amp --rkhs --relative_ratio 0.01 | tee $(date "+%Y%m%d%H%M%S%N").txt
CUDA_VISIBLE_DEVICES=5,6,7 python train.py --loss ours --epochs 300 --ndf 256 --n_rkhs 2048 --batch_size 480 --tclip 20.0 --n_depth 10 --dataset C10 --rkhs --relative_ratio 0.01 | tee $(date "+%Y%m%d%H%M%S%N").txt
