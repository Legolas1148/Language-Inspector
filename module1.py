from spellchecker import SpellChecker
import pandas as pd
sentence = input('Please enter a sentence = ')
df = pd.read_excel(r'C:\Users\Legolas1148\Documents\MakeUC\Spell-Check\Spelling_Repository.xlsx')
spellchecker = SpellChecker()
words = sentence.split()
dictionairy = set(df['Word'].str.lower())
misspelled_words = []
count = 0
for word in words:
    cleaned_word = ''.join(c for c in word if c.isalpha())
    if misspelled_words == 0:
        print("No misspelled words found.")
    if cleaned_word.lower() not in dictionairy:
        misspelled_words.append(cleaned_word)
        print(spellchecker.correction(word.lower()))
        print(spellchecker.candidates(word.lower()))
    if len(misspelled_words) >= count:
            print(f"The following words are misspelled: {', '.join(misspelled_words)}")
            count = count + 1
print("Thank you for your patronage")