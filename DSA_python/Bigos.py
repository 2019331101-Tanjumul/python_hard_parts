#big O of O(1) , no matters how much the input it take the order of operations will / function here is simple and constant

#def multily_num (n): 
#     return n*n

# print(multily_num(2))




#linear time complexity here O(N), the amount of time it takes the input the times it grows to the output 

# def lin_in(n): 
#     for i in range(n): 
#         print(i)
        
#     for j in range(n): 
#         print(j)
#         # print("j")
# lin_in(10)





#run time complexity of O(n^2)

# def set_in(n): 
#     for i in range(n): #-------> runs as the complexity of o(n)
#         for j in range(n): #-------> runs the complexity of o(n)
#             print(i,j) #-------->running in after in every o(n) then O(n) making it the n*n times = n^2
            

# set_in(10)


#for an analogy : 


def lin_in(n): 
    for i in range(n): 
      
        
        for j in range(n): 
            print(i,j)
        
        for k in range(n): 
            print(k)
lin_in(10)

