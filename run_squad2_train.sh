#!/usr/bin/env bash
python run_squad.py \
--vocab_file=./data/pretrained_model/uncased_base/vocab.txt \
--bert_config_file=./data/pretrained_model/uncased_base/bert_config.json \
--init_checkpoint=./data/pretrained_model/uncased_base/bert_model.ckpt \
--do_train=True \
--train_file=./data/squad/train-v2.0.json \
--predict_file=./data/squad/dev-v2.0.json \
--output_dir=./data/squad/PointerNetDecoder \
--train_batch_size=12 \
--learning_rate=3e-5 \
--num_train_epochs=2 \
--max_seq_length=300 \
--max_query_length=30 \
--version_2_with_negative=True \
--max_answer_length=20 \
--null_score_diff_threshold=0.0 \
--predict_steps=1000 \
--use_pretrained_embed=False \
--pretrained_embed_trainable=False \
--decoder='PointerNetdecoder'
# MLP, RecurrentMLPDecoder, PointerNetDecoder or NoAnswerScoreDecoder

:<<annotation
annotation
