#mkdir -p  experiments/fixed/0/pretrain_pos/model/
#python main.py --config configs/fixed/lstmcrf_pos.config | tee experiments/fixed/0/pretrain_pos/model/log

mkdir -p  experiments/unfixed/0/pretrain_pos/model/
python main.py --config configs/unfixed/lstmcrf_pos.config | tee experiments/unfixed/0/pretrain_pos/model/log
