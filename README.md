## Environment Configuration
```
git clone <repo>
cd <repo_name>
conda create -n forget python=3.10 -y
conda activate forget
conda install pytorch==2.2.0 pytorch-cuda=12.1 -c pytorch -c nvidia
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# numpy2 seems to affect nltk import (nltk->scipy->numpy)
pip install numpy<2
```

## Training and Evaluate

```
cd compress
bash train.sh
```

## Tips
You can first download the datasets (`DKYoon/SlimPajama-6B` and `sggetao/PwC`) and the model (`meta-llama/Llama-2-7b-hf`), then modify their paths in `compress/compressLLM_len-510_ratio-15/config.json`.


Our model was trained on H20 and the memory will exceed 24G. If you want to train on a 24G GPU(like RTX 3090), you can switch to using `TinyLlama/TinyLlama_v1.1`。


Prepare the data will be cost 7~11 hours.

Pretraining will cost 34~36 hours.(8xH20)
