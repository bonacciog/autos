import urllib.request
import argparse

parser = argparse.ArgumentParser(description='fake_audio params')
parser.add_argument('--input-path1', type=str, help='Path of the input file.')
parser.add_argument('--input-path2', type=str, help='Path of the input file.')
parser.add_argument('--volume-path', type=str, help='Path of the input file.')
args = parser.parse_args()

