'''
find the square root of 16
by using an initial guess
and averaging it
'''

value = 625
g = 3
iterations = 0 
while True:
    if round(g**2,2) == value:
        print(g,iterations)
        break
    else:
        g = (g+value/g)/2
        iterations += 1