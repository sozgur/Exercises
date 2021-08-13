from random import randint

class WordFinder:
    """Word Finder: finds random words from a dictionary.

        >>> wf = WordFinder("words.txt")
        235886 words read
            
        >>> word_list = wf.words

        >>> wf.random() in word_list
        True

        >>> wf.random() in word_list
        True
    """
   
    def __init__(self, file_name):
        """Read file and take words on the each line"""
        with open(file_name, 'r') as file:
            self.words = self._putWords(file)

        print(f"{len(self.words)} words read")  


    def _putWords(self, file):
        return [line.strip() for line in file]

    
    def random(self):
        """Return random word form world list file"""
        last_idx = len(self.words)-1
        random_idx = randint(0, last_idx)
        return self.words[random_idx]


class SpecialWordFinder(WordFinder):
    """Special Word Finder: finds random words that excludes blank/ comments from a dictionary.

        >>> swf = SpecialWordFinder("words_with_comment.txt")
        4 words read

        >>> word_list = swf.words

        >>> swf.random() in word_list
        True

        >>> swf.random() in word_list
        True

    """

    def _putWords(self, file):
        return [line.strip() for line in file if bool(line.strip()) and line.strip()[0] != '#']







