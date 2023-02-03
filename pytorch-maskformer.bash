module load ngc/default
module load gcc/9.3.0

module load anaconda/2020.11-py38
module use /home/jiang784/privatemodules
module load use.own
module load conda-env/maskformer-torch-py3.8.10
module load pytorch/21.09-py3 # WARNING: container problem! 
module load cuda
module load cudnn

# module load learning/conda-2020.11-py38-gpu
# module load ml-toolkit-gpu/opencv/4.5.1

# conda activate pytorch-maskformer
 # Not sure if needed? No!



## conda create new env
# conda-env-mod create -n maskformer-torch

# Dataset Path
# /scratch/gilbreth/jiang784/datasets/coco/COCO-Stuff-10K

# Install Detectron2
# export PYTHONPATH="${PYTHONPATH}:/home/jiang784/.local/bin:/home/jiang784/downloads/detectron2" # NOTE: Detectron2 is installed here? No
# export PATH="${PATH}:/home/jiang784/.local/bin:/home/jiang784/downloads/detectron2"
# python -m pip install -e detectron2 --user
# python -m pip install 'git+https://github.com/facebookresearch/detectron2.git' --user
# conda install -c conda-forge detectron2

# Other dependencies
# pip install typer==0.4.0
# pip install git+https://github.com/facebookresearch/fvcore.git
# conda install "numpy < 1.23.0"

# dataset
# export DETECTRON2_DATASETS=/scratch/gilbreth/jiang784/datasets

# demo
# python  demo.py --config-file ../configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --input demo.jpg ../ckpts/model_final_cb03eb.pkl 

# eval
# python ./train_net.py --config-file ./configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --eval-only MODEL.WEIGHTS ./ckpts/model_final_cb03eb.pkl 

# train
# python ./train_net.py --config-file ./configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --num-gpus 1 SOLVER.IMS_PER_BATCH 14 OUTPUT_DIR ./logs
#    SOLVER.BASE_LR 1
# nohup training script
# nohup which python | python ./train_net.py --config-file ./configs/coco-stuff-10k-171/maskformer_R50_bs32_60k.yaml --num-gpus 1 SOLVER.IMS_PER_BATCH 14 OUTPUT_DIR ./logs > ./logs/logs_training_1.txt &