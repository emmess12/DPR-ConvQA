DATE=$(date +%Y_%m_%d)/$(date +%H_%M_%S)
# Please change to your DUMP_DIR and LOAD_DIR as your path to phrase dump and path to the query-finetuned model
CUDA_VISIBLE_DEVICES=0 make eval-query-orquac MODEL_NAME=dpr-orquac/query_finetune/eval/${DATE} DUMP_DIR=outputs/dpr-orquac/2023_08_29/23_08_07_wiki-20181220/dump/ LOAD_DIR=dpr-orquac/query_finetune/2023_07_03/22_07_07
