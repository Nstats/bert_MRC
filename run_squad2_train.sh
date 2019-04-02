#!/usr/bin/env bash
python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--do_predict=False \
--predict_file=./data/squad/dev-v2.0.json \
--output_dir=./data/squad/layer-1 \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=1 \
--max_seq_length=300 \
--max_query_length=30 \
--version_2_with_negative=True \
--max_answer_length=15 \
--null_score_diff_threshold=0.0 \
--FLAGS.ckpt_saved_times=5

:<<annotation
annotation
