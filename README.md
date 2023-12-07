# Learning Contrastive Representations for Dense Passage Retrieval in Open-domain Conversational Question Answering
The repository is dedicated to the source code of DPR-ConvQA including the datasets utilized in the paper.
The model in the paper is based on a pipeline structure:
1. Entity Generation: responsible for capturing context and question entities from the conversational context and the current question.
2. Retriever: retrieves the relevant passage based on the filtered conversational context and use contrastive learning to group together the similar passages
3. Reader: selects the right answer span from the given evidence.

# **Datasets**

OR-QuAC can be downloaded from:https://github.com/prdwb/orconvqa-release. The pre-processing of the dataset can be done as:

```python scripts/preprocess/data/orquac/retriever/convert_orconv_retriever_train.py
python scripts/preprocess/data/orquac/retriever/convert_orconv_retriever_dev.py
python scripts/preprocess/data/orquac/retriever/convert_orconv_retriever_test.py

python scripts/preprocess/data/orquac/qa/convert_qa_train.py
python scripts/preprocess/data/orquac/qa/convert_qa_test.py
```
TopiOCQA can be downloaded from: https://mcgill-nlp.github.io/topiocqa/ and can be preprocessed as:

```
python scripts/preprocess/data/topiocqa/convert_retriever_dev.py
python scripts/preprocess/data/topiocqa/convert_retriever_train.py

python scripts/preprocess/data/topiocqa/qa/convert_qa_train.py
python scripts/preprocess/data/topiocqa/qa/convert_qa_dev.py
```
# Installation
```
$ conda create -n dprconvqa python=3.8

$ conda activate dprconvqa

# install PyTorch without CUDA
$ conda install pytorch torchvision torchaudio -c pytorch

# install PyTorch for CUDA 10.2 (using GPU)
$ conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch

# install PyTorch for CUDA 11.3 (using GPU)
$ conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch

$ pip install -r requirements.txt
```

# **Code**

You can  reproduce all results of DPR-ConvQA in Table 2
To reproduce all results, run:
```
bash scripts/pipeline.sh --main-results
```

# **Training the pipeline**

To train a pipeline, just choose the config that represents the pipeline you would like to train, and run
```
    bash scripts/pipeline.sh --train [<PATH_TO_CONFIG>] [<SOURCES_STR>]
```

# **Testing the pipeline**

````
 bash scripts/pipeline.sh --example [<PATH_TO_CONFIG>]

```
# **Finetuning and Evaluation**
Finally, we further finetune and evaluate the query-side encoder
````
bash scripts/run/orquac/query_finetune.sh
bash scripts/run/orquac/query_finetune_eval.sh
````


````
