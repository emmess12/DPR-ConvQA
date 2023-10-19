# DPR-ConvQA
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
TopiOCQA can be downloaded from: https://mcgill-nlp.github.io/topiocqa/

# **Code**

Our code is based on [CONVINSE](https://github.com/PhilippChr/CONVINSE/tree/main) and [ProConvQA](https://github.com/starsuzi/PRO-ConvQA#run)
