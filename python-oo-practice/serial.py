"""Python serial number generator."""

class SerialGenerator:
    """Machine to create unique incrementing serial numbers.
    
    >>> serial = SerialGenerator(start=100)

    >>> serial.generate()
    100

    >>> serial.generate()
    101

    >>> serial.generate()
    102

    >>> serial.reset()

    >>> serial.generate()
    100
    """

    def __init__(self, start=0):
        self.start = start-1
        self.counter = start-1

    def __repr__(self):
        return f"<SerialGenerator start={self.start+1} next={self.counter+2}>"


    def generate(self):
        """ increase the existing value"""
        self.counter += 1
        return self.counter

    def reset(self):
        """ Reset with start value """
        self.counter = self.start



