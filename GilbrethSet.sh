# torch maskformer
module load anaconda/2020.11-py38
conda activate maskformer-torch
module load cuda/11.7.0
module load gcc/6.3.0
export DETECTRON2_DATASETS=/depot/davisjam/data/wenxin/MaskFormer_pytorch/datasets

# tf-maskformer
module load anaconda/2020.11-py38
conda activate maskformer-tf
module load cuda/11.7.0
module load gcc/6.3.0
export PYTHONPATH="${PYTHONPATH}:/depot/davisjam/data/wenxin/TFMG/tf-maskformer" # NOTE: Detectron2 is installed here? No
export PATH="${PATH}:/depot/davisjam/data/wenxin/TFMG/tf-maskformer"

# conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia
# python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'

# cd MaskFormer
# pip install -r requirements.txt
# pip install opencv-python
# wget https://dl.fbaipublicfiles.com/maskformer/panoptic-coco/maskformer_panoptic_R50_bs64_554k/model_final_6f60dc.pkl


# sinteractive -A standby -N2 -n16 --mem=8G --time=0-02:00 --gres=gpu:1

# export DETECTRON2_DATASETS=/depot/davisjam/data/wenxin/MaskFormer_pytorch/datasets
