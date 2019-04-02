import numpy as np
import json
from nltk.tokenize import word_tokenize

file = json.load(open(r'./dev-v2.0.json', 'r', encoding='utf-8'))
for data in file['data']:
    num = 1
    for para in data['paragraphs'] and num <= 100:

        num += 1
