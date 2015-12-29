Python3.4 and janome on alpine. (167MB)
========

See https://pypi.python.org/pypi/Janome

Sample

from janome.tokenizer import Tokenizer
t = Tokenizer()
for token in t.tokenize(u'すもももももももものうち'):
    print(token)
>>>
すもも 名詞,一般,*,*,*,*,すもも,スモモ,スモモ
も    助詞,係助詞,*,*,*,*,も,モ,モ
もも  名詞,一般,*,*,*,*,もも,モモ,モモ
も    助詞,係助詞,*,*,*,*,も,モ,モ
もも  名詞,一般,*,*,*,*,もも,モモ,モモ
の    助詞,連体化,*,*,*,*,の,ノ,ノ
うち  名詞,非自立,副詞可能,*,*,*,うち,ウチ,ウチ