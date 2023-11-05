from spellchecker import SpellChecker
import pandas as pd
from PyDictionary import PyDictionary
from googletrans import Translator
dictionary= PyDictionary()
translator = Translator()
while True:
        choice = input('Do you want to access the dictionary, translator, or editor? (D/T/E) = ')

        match choice:
                case "E":
                    sentence = input('Please enter a sentence = ')
                    df = pd.read_excel(r'C:\Users\Legolas1148\Documents\MakeUC\Spell-Check\Spelling_Repository.xlsx')
                    spellchecker = SpellChecker()
                    words = sentence.split()
                    dictionairy = set(df['Word'].str.lower())
                    misspelled_words = []
                    count = 0
                    for word in words:
                        cleaned_word = ''.join(c for c in word if c.isalpha())
                        if cleaned_word.lower() not in dictionary:
                            misspelled_words.append(cleaned_word)
                            print('Here is a possible correction:  ' , spellchecker.correction(word.lower()))
                            print('Here are the other possible words: ',spellchecker.candidates(word.lower()))
                            count = count + 1
                        if len(misspelled_words) == count and count > 0:
                            print(f"The following words are misspelled: {', '.join(misspelled_words)}")
                    if len(misspelled_words) == 0:
                            print("No misspelled words found.")
                case "D":
                    sentenceD = input('Please enter a word = ')
                    meaning= dictionary.meaning(sentenceD)
                    print(meaning)
                case "T":
                    language = input('Please enter whether you want to translate to English or Spanish? (E/S) ')
                    if language == "E":
                        reply = input('Please enter a word = ')
                        source_lang = 'es'
                        target_lang = 'en'
                        translator = Translator()
                        translated_text = translator.translate(text = reply, dest = target_lang, src = source_lang)
                        print(f"Translated Text: {translated_text}")
                    else:
                        reply = input('Please enter a word = ')
                        source_lang = 'en'
                        target_lang = 'es'
                        translator = Translator()
                        translated_text = translator.translate(text = reply, dest = target_lang, src = source_lang)
                        print(f"Translated Text: {translated_text}")
        answer = input('Do you want to continue? (Y/N) ')
        if answer == "Y" or answer == "y":
            continue
        else:
            break

    