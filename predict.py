#!/usr/bin/env bash
import torch
from docopt import docopt
import os

from main import seed_num, load_model_decode
from utils.data import Data


def main():
    doc = """
    Usage:
    predict <model_dir>  <input_file> <output_file>
    """

    args = docopt(doc)
    config = {}
    config['status'] = 'decode'
    config['raw_dir'] = args['<input_file>']
    config['decode_dir'] = args['<output_file>']
    dset_dir = os.path.join(args['<model_dir>'], 'model.dset')
    load_model_dir = os.path.join(args['<model_dir>'], 'model.best.model')
    config['dset_dir'] = dset_dir
    config['load_model_dir'] = load_model_dir

    data = Data()
    data.read_config(config)

    data.HP_gpu = torch.cuda.is_available()
    print("Seed num:", seed_num)

    if data.status == 'decode':
        print("MODEL: decode")
        data.load(data.dset_dir)
        data.read_config(config)
        print(f"Reading from {data.raw_dir}")
        # exit(0)
        data.show_data_summary()
        data.generate_instance('raw')
        print(f"nbest: {data.nbest}")
        decode_results, pred_scores = load_model_decode(data, 'raw')
        if data.nbest:
            data.write_nbest_decoded_results(decode_results, pred_scores, 'raw')
        else:
            data.write_decoded_results(decode_results, 'raw')
    else:
        print("Invalid command")


