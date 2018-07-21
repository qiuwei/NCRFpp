cd data 
git pull

cd ..
python main.py --config configs/fixed/0/expr1.config &

python main.py --config configs/fixed/0/expr2.config & 

python main.py --config configs/fixed/0/expr3.config &

python main.py --config configs/fixed/0/expr4.config &


python main.py --config configs/fixed/1/expr1.config &

python main.py --config configs/fixed/1/expr2.config & 

python main.py --config configs/fixed/1/expr3.config &

python main.py --config configs/fixed/1/expr4.config &
