python prepare_data.py --work_dir compressLLM_len-510_ratio-15
python ./trainer.py --work_dir compressLLM_len-510_ratio-15 --port 29500
python ./evaluator.py --work_dir compressLLM_len-510_ratio-15 --batch_size 1


python instruction_prepare_data.py --work_dir compressLLM_len-510_ratio-15
python ./instruction_trainer.py --work_dir compressLLM_len-510_ratio-15 --port 29500
python ./instruction_evaluator.py --work_dir compressLLM_len-510_ratio-15 --batch_size 1