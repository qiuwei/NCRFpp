cd data 
git pull

cd ..
mkdir -p  experiments/fixed/0/expr1/
python main.py --config configs/fixed/expr1.config > experiments/fixed/0/expr1/log &

mkdir -p  experiments/fixed/0/expr2/
python main.py --config configs/fixed/expr2.config > experiments/fixed/0/expr2/log &

mkdir -p  experiments/fixed/0/expr3/
python main.py --config configs/fixed/expr3.config > experiments/fixed/0/expr3/log &

