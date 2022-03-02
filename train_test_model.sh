~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/output.fasttext.shuffled.train -output /workspace/model/model_default
~/fastText-0.9.2/fasttext test /workspace/model/model_default.bin /workspace/datasets/categories/output.fasttext.shuffled.test


~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/output.fasttext.shuffled.train -output /workspace/model/model_default -epoch 25
 ~/fastText-0.9.2/fasttext test /workspace/model/model_default.bin /workspace/datasets/categories/output.fasttext.shuffled.test

N       5383
P@1     0.343
R@1     0.343
