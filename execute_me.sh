python week3/createContentTrainingData.py --output /workspace/datasets/categories/output.fasttext
wc -l /workspace/datasets/categories/output.fasttext
shuf -n `wc -l /workspace/datasets/categories/output.fasttext | cut -d' ' -f 1` /workspace/datasets/categories/output.fasttext > /workspace/datasets/categories/output.fasttext.shuffled
#head -$((`(wc -l /workspace/datasets/categories/output.fasttext | cut -d' ' -f 1)`/2)) /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.train
#tail -$((`(wc -l /workspace/datasets/categories/output.fasttext | cut -d' ' -f 1)`/2)) /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.test
head -10000 /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.train
tail -10000 /workspace/datasets/categories/output.fasttext.shuffled > /workspace/datasets/categories/output.fasttext.shuffled.test
~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/output.fasttext.shuffled.train -output /workspace/model/model_default
~/fastText-0.9.2/fasttext test /workspace/model/model_default.bin /workspace/datasets/categories/output.fasttext.shuffled.test


~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/output.fasttext.shuffled.train -output /workspace/model/model_default -epoch 25
 ~/fastText-0.9.2/fasttext test /workspace/model/model_default.bin /workspace/datasets/categories/output.fasttext.shuffled.test
