#!/bin/bash
#SBATCH -J kuangjia # 作业名是 test
#SBATCH -p normal # 提交到 normal 分区
#SBATCH -N 1 # 使用一个节点
#SBATCH -n 5 # 使用一个进程（cpu 核）
#SBATCH –-gres=gpu:1
#SBATCH -t 20:00 # 任务最大运行时间是 5 分钟
#SBATCH -o kuangjia.out # 将屏幕的输出结果保存到当前文件夹的 test.out
#SBATCH -e kuangjia.err # 将屏幕的输出结果保存到当前文件夹的 test.err
module load anaconda3
python 2.py
Sleep 200
