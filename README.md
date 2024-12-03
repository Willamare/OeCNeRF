# Extreme lighting Robust Neural Radiance Fields for Novel View synthesis
# 1 Dataset
We use datasets in our experiments:

(1)LOM:https://drive.google.com/file/d/1orgKEGApjwCm6G8xaupwHKxMbT2s9IAG/view

(2)LLNeRF:https://drive.google.com/drive/folders/1h-u8DkvuaIvcHZihYIWcqwpURiM32_u3

(3)DarkGaussian:https://pan.baidu.com/share/init?surl=xmZqYEJ5ZMkdldPS9_MgiQ&pwd=jf48
## 1.1 Dataset format

    BLENDER DATASETS      
    │─── 1.jpg
    │─── 2.jpg
    │─── 3.jpg
    │─── ......
    │─── ****.json
    
    REAL-WORLD DATASETS    
    │─── images
         │─── 1.png
         │─── 2.png
         │─── ......
    │─── sparse
    │─── poses_bounds.npy


# 2 Environment
This experiment uses the Ubuntu 20.04 operating system, with Python 3.8 and PyTorch 2.0.0 installed, and is configured with CUDA 11.8 to support GPU acceleration. A single NVIDIA RTX 3090 graphics card is utilized in the experiment.
<br/>
## 2.1 Enviroment setup:
```
$ git clone https://github.com/Willamare/OeCNeRF.git
$ cd OeCNeRF
$ conda create -n OeCNeRF -c anaconda python=3.8
$ conda activate OeCNeR
$ conda install pytorch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0 cudatoolkit=11.7 -c pytorch
$ pip3 install -r requirements.txt
```



<br/>

# 3 Running
```bash
# running
sh train_render.sh

All the experiment results and checkpoints will be saved to the 'exp/' directory.

exp   
└─── llff   
      └─── AMEbike
              └─── checkpoints
              └─── test_vis
              └─── config.gin
              └─── log_train.txt
     └─── AMEbuu
              └─── ......
              └─── ......
     └─── ......
```
