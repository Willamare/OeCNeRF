#!/bin/bash
CONFIG=LOM.gin
SCENE=bike_HE1
EXPERIMENT=llff/"$SCENE"
DATA_ROOT=/root/autodl-tmp/bilarf/data/
DATA_DIR="$DATA_ROOT"/"$SCENE"
python train.py --gin_configs=${CONFIG} \
    --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
    --gin_bindings="Config.exp_name = '${EXPERIMENT}'" \
    --gin_bindings="Model.bilateral_grid = True"
python render.py --gin_configs=${CONFIG} \
    --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
    --gin_bindings="Config.exp_name = '${EXPERIMENT}'"

