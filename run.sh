#mkdir -p  experiments/fixed/0/pretrain_pos/model/
python main.py --config configs/fixed/lstmcrf_pos.config | tee experiments/fixed/0/pretrain_pos/model/log

#mkdir -p  experiments/unfixed/0/pretrain_pos/model/
python main.py --config configs/unfixed/lstmcrf_pos.config | tee experiments/unfixed/0/pretrain_pos/model/log

mkdir -p  experiments/fixed/0/pretrain_pos/expr2/
python main.py --config configs/fixed/expr2.config | tee experiments/fixed/0/pretrain_pos/expr2/log

mkdir -p  experiments/unfixed/0/pretrain_pos/expr2/
python main.py --config configs/unfixed/expr2.config | tee experiments/unfixed/0/pretrain_pos/expr2/log
