def valid_parentheses(parens):
    """Are the parentheses validly balanced?

        >>> valid_parentheses("()")
        True

        >>> valid_parentheses("()()")
        True

        >>> valid_parentheses("(()())")
        True

        >>> valid_parentheses(")()")
        False

        >>> valid_parentheses("())")
        False

        >>> valid_parentheses("((())")
        False

        >>> valid_parentheses(")()(")
        False
    """

    check_list = []

    for p in parens:
        if p == '(':
            check_list.append(p)
        elif p == ')':
            if len(check_list) == 0:
                return False
            check_list.pop()

    return len(check_list) == 0