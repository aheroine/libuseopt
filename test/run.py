import os

import argparse

parser = argparse.ArgumentParser()

parser.add_argument('-load', type=str, default='libFindTargetsPass.so', help='lib path')
parser.add_argument('-passname', type=str, default='find_target_function', help='pass name')
parser.add_argument('--cfile', type=str, help='path of c file', default='test.c')
parser.add_argument('--output', type=str, default='tmp.txt', help='output file path')
parser.add_argument('--target', type=str, default='test', help='target function name')

if __name__ == '__main__':
    args = parser.parse_args()

    cfile = args.cfile
    outbf = cfile.replace('.c', '.bc')
    modifed_outbf = 'mod_' + outbf

    os.system(f'clang -emit-llvm -c {args.cfile}')

    idx = 0
    while os.path.exists(f'tmp{idx}.txt'):
        idx += 1

    if os.path.exists('targets.txt'):
        os.rename('targets.txt', f'tmp{idx}.txt')

    os.system(f'opt -load {args.load} -find_target_function '
              f'-target={args.target} -output=targets.txt < {outbf}')

    f = open('targets.txt')
    targets = f.readline()
    f.close()

    targets = 'test1,test2'

    os.system(f'opt -load {args.load} -rename_target_function '
              f'--targets={targets}  < {outbf} > {modifed_outbf}')
