import io
import sys

def print_upper_words(words, must_start_with):

    ''' Print out each words uppercase if they start with letters 

        For example:

        print_upper_words(["hello", "hey", "goodbye", "yo", "yes"],
                   must_start_with={"h", "y"})


        # this should print "HELLO", "HEY", "YO", and "YES"
    '''

    for word in words:
        first_letter = word[0]
        if first_letter in must_start_with or first_letter.upper() in must_start_with:
            print(word.upper())



print_upper_words(["hello", "hey", "goodbye", "yo", "yes"], {"h", "y"})

