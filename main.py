# print('Working main.py')

#touple : a = (1,2,3,4,5,4)

#touples are immutable
# a = [1,2,3,4,5,4]
# print(a)
# a[0]= 12 
# print(a)
#now in the list we had that option to change at any time at any index but in touple it's not possible

#you can have duplicates 
#set and touples are ordered values 
#it has heterogenious nature i can store int , float , str etc. 


# b = [1,3,4,5,3,2,1,4,5,6]
# for i in b : 
#     print(b)
    
# for i in range(len(b)): 
#          print(b[i])
         
#touples have 2 mentods only : index finding and counting 
""" t=(5,2,3,4,6,4,42,3,5,6,32,3)
index = t.index(9) 
count_5 = t.count(5)"""

t = (1,3,5,6,44,33,44,4,4,4,4,5)

count = t.count(4)
print(count)

#touple unpacking : 

a,b,c,d = (1,3,4,5)
print(b)

#can you see the differences ? 

dd =(12)
print(type(dd)) #you are using touple right ? then why it's showing int ? 

ee = (12,) #if i do this this will create the touple by understanding that the comma is demandig the values to be set and used as touple to assign in a string or another variable beside ee
print(type(ee))

