def same_frequency(num1, num2):
    """Do these nums have same frequencies of digits?
    
        >>> same_frequency(551122, 221515)
        True
        
        >>> same_frequency(321142, 3212215)
        False
        
        >>> same_frequency(1212, 2211)
        True
    """
    count_num1 = {}
    for num in str(num1):
        count_num1[num] = count_num1.get(num, 0) + 1

    count_num2 = {}
    for num in str(num2):
        count_num2[num] = count_num2.get(num, 0) + 1

    return count_num1 == count_num2
