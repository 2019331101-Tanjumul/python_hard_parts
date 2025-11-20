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

# t = (1,3,5,6,44,33,44,4,4,4,4,5)

# count = t.count(4)
# print(count)

# #touple unpacking : 

# a,b,c,d = (1,3,4,5)
# print(b)

# #can you see the differences ? 

# dd =(12)
# print(type(dd)) #you are using touple right ? then why it's showing int ? 

# ee = (12,) #if i do this this will create the touple by understanding that the comma is demandig the values to be set and used as touple to assign in a string or another variable beside ee
# print(type(ee))




#stopped at 05:39 am 

#jumped in 6:03 need to check before this time 

#dictonry : 

#deep copy is this if i put something by reference it will change the next also 
# a = [1,3,45,6,7]

# b = a 
# b[0] = 100 

# print(a)

# #shallow copy : it hide the changes because it have it's own space

# c = b.copy()
# print(c) #it's also able to copy the things like oop 

# # Dictionary with duplicate keys (last value wins)
# d = {2: "value2", 4: "value4", 5: "value5", 6: "value6", 
#      5: "new_value5", 4: "new_value4", 3: "value3", 3: "new_value3"}
# print("Dictionary d:", d)
# d2 = d.copy()
# print("Copy d2:", d2)
# # print(d2)

# d2 = d.get(4)

# print(d.items())

# d1 = {1:200, 2:400, 4:0, 5:992, 6:293,11:17}
# print(d1)
# d2 = {40:100, 60:50, 32:20, 22:100, 99:30}
# d3 = {11:33,14:22}
# for i in d2:
#    d1[i] = d2[i]

# d1.update(d3)
# print(d1)  #here the usecase is same 
#if there is multiple distinct numbers it will update them aswell 
# here this is the output after marging the two dictonary but it also updated the new value to old one 
'''{1: 200, 2: 400, 4: 0, 5: 992, 6: 293, 11: 17}
{1: 200, 2: 400, 4: 0, 5: 992, 6: 293, 11: 33, 40: 99, 60: 49, 32: 2, 22: 94, 99: 3, 14: 22}'''


#python script to sum all the dictonary : 

d2 = {10:100,30:300}
newfile = 0
for i in d2 : 
    newfile+=i
    
print(newfile)