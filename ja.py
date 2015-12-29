import sys
if len(sys.argv) > 1:
    from janome.tokenizer import Tokenizer
    t = Tokenizer()
    for token in t.tokenize(' '.join(sys.argv[1:])):
        print(token)
