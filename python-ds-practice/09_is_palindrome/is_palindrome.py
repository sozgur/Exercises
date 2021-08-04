def is_palindrome(phrase):
    """Is phrase a palindrome?

    Return True/False if phrase is a palindrome (same read backwards and
    forwards).

        >>> is_palindrome('tacocat')
        True

        >>> is_palindrome('noon')
        True

        >>> is_palindrome('robert')
        False

    Should ignore capitalization/spaces when deciding:

        >>> is_palindrome('taco cat')
        True

        >>> is_palindrome('Noon')
        True
    """
    l, h= 0, len(phrase)-1

    while l < h:
        if phrase[l] == ' ':
            l += 1
        if phrase[h] == ' ':
            h -= 1
        if phrase[l].lower() != phrase[h].lower():
            return False

        l += 1
        h -= 1

    return True


