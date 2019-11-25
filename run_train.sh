#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=1
export PYTHONWARNINGS="ignore"

# resnet18, resnet50
export NET='resnet18'
export path='model'
export data='data/web-bird'
export N_CLASSES=200
export droprate=0.25
export denoise=True
export smooth=True
export label_weight=0.5

python train.py --net ${NET} --n_classes ${N_CLASSES} --denoise ${denoise} --droprate ${droprate} --smooth ${smooth} --label_weight ${label_weight}  --path ${path} --data_base ${data}
