from spellchecker import SpellChecker
import pandas as pd
from PyDictionary import PyDictionary
from googletrans import Translator
dictionary= PyDictionary()
translator = Translator()
while True:        #while loop that runs until the user quits the program
        choice = input('Do you want to access the dictionary, translator, or editor? (D/T/E) = ')

        #Switch Case for choosing between Spell checker, dictionary, and  translation functionalities of the program
        match choice:
                #Case for the Spelling Checker functionality of the program
                case "E":
                    sentence = input('Please enter a sentence = ')
                    df = pd.read_excel(r'C:\Users\Legolas1148\Documents\MakeUC\Spell-Check\Spelling_Repository.xlsx')
                    spellchecker = SpellChecker()
                    words = sentence.split()
                    dictionary = set(df['Word'].str.lower())
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

                #Case for Dictionary functionality of the program
                case "D":
                    sentenceD = input('Please enter a word = ')
                    meaning= dictionary.meaning(sentenceD)
                    print(meaning)

                #Case for translator functionality of the program
                case "T":        #Contains code for translating from english to spansih and vice versa
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
        answer = input('Do you want to continue? (Y/N) ')        #Condition that decides when the main program loop ends
        if answer == "Y" or answer == "y":
            continue
        else:
            break

    
