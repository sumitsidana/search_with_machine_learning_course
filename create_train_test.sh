wc -l /workspace/datasets/categories/output.fasttext
shuf -n 115358 /workspace/datasets/categories/output.fasttext > /workspace/datasets/categories/output.fasttext.shuffled
head -5769 /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.train
tail -5769 /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.test
