# def mySqrt(x):
#     if x==0:
#         return 0    
#     # for root in range(0,int(x/2),1):
#     root = 0.01
#     while root < x:
#         square = round(root**2,2)
#         if square == x:
#             return int((str(round(root,2))).split('.')[0])
#         root += 0.001
#         print(square)

# test_cases= [1,2,3,8,100, 8192]
# [ print(x,mySqrt(x)) for x in test_cases  ]


# def trailingZeroes(n):
#     factorial = 1

#     for i in range(2,n+1):
#         factorial *= i
#     factorial = str(factorial)
#     fact_no_zero =  factorial.strip("0")
#     return len(factorial)-len(fact_no_zero)

# print(trailingZeroes(3))