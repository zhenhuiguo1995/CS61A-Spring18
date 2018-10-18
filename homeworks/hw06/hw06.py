passphrase = '*** PASSPHRASE HERE ***'

def survey(p):
    """
    You do not need to understand this code.
    >>> survey(passphrase)
    '3d2eea56786a3d9e503a4c07dd667867ef3d92bfccd68b2aa0900ead'
    """
    import hashlib
    return hashlib.sha224(p.encode('utf-8')).hexdigest()

class Fib():
    """A Fibonacci number.

    >>> start = Fib()
    >>> start
    0
    >>> start.next()
    1
    >>> start.next().next()
    1
    >>> start.next().next().next()
    2
    >>> start.next().next().next().next()
    3
    >>> start.next().next().next().next().next()
    5
    >>> start.next().next().next().next().next().next()
    8
    >>> start.next().next().next().next().next().next() # Ensure start isn't changed
    8
    """
    #the value attribute is a fib number.
    def __init__(self, value = 0, next_value = 1):
        self.value = 0
        self.next_value = 1
    #fib.next returns a fib instance whose value is the next fib number
    

    def next(self):
        "*** YOUR CODE HERE ***"
        b = Fib()
        b.value = self.next_value
        b.next_value = self.value + self.next_value
        return b

    def __repr__(self):
        return str(self.value)

class VendingMachine:
    """A vending machine that vends some product for some price.

    >>> v = VendingMachine('candy', 10)
    >>> v.vend()
    'Machine is out of stock.'
    >>> v.deposit(15)
    'Machine is out of stock. Here is your $15.'
    >>> v.restock(2)
    'Current candy stock: 2'
    >>> v.vend()
    'You must deposit $10 more.'
    >>> v.deposit(7)
    'Current balance: $7'
    >>> v.vend()
    'You must deposit $3 more.'
    >>> v.deposit(5)
    'Current balance: $12'
    >>> v.vend()
    'Here is your candy and $2 change.'
    >>> v.deposit(10)
    'Current balance: $10'
    >>> v.vend()
    'Here is your candy.'
    >>> v.deposit(15)
    'Machine is out of stock. Here is your $15.'

    >>> w = VendingMachine('soda', 2)
    >>> w.restock(3)
    'Current soda stock: 3'
    >>> w.restock(3)
    'Current soda stock: 6'
    >>> w.deposit(2)
    'Current balance: $2'
    >>> w.vend()
    'Here is your soda.'
    """
    "*** YOUR CODE HERE ***"
    def __init__(self, product_name, product_price):
        self.name = product_name
        self.price = product_price

    stock = 0
    money = 0
    #restock the vending machine by amount numbers of product
    def restock(self, amount):
        self.stock += amount
        return 'Current {0} stock: {1}'.format(self.name,self.stock)

    #checks if deposit >= price. If yes, give customer one product and the change
    #if not, ask for more deposit
    def vend(self):
        if self.stock == 0:
            return 'Machine is out of stock.'
        elif self.money < self.price:
            return 'You must deposit ${0} more.'.format(self.price - self.money)
        else:
            self.stock -= 1
            if self.money == self.price:
                self.money = 0
                return 'Here is your {0}.'.format(self.name)
            else:
                change = self.money - self.price
                self.money = 0
                return 'Here is your {0} and ${1} change.'.format(self.name, change)
    def deposit(self, amount):
        if self.stock == 0:
            return 'Machine is out of stock. Here is your ${0}.'.format(amount)
        else:
            self.money += amount
            return 'Current balance: ${0}'.format(self.money)