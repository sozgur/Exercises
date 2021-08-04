def flip_case(phrase, to_swap):
    """Flip [to_swap] case each time it appears in phrase.

        >>> flip_case('Aaaahhh', 'a')
        'aAAAhhh'

        >>> flip_case('Aaaahhh', 'A')
        'aAAAhhh'

        >>> flip_case('Aaaahhh', 'h')
        'AaaaHHH'

    """
    list_phrase = list(phrase)

    for idx in range(len(phrase)):
        if phrase[idx].lower() == to_swap.lower():
            if list_phrase[idx].islower():
                list_phrase[idx] = list_phrase[idx].upper()
            else:
                list_phrase[idx] = list_phrase[idx].lower()

    return "".join(list_phrase)