# Create an empty list called my_list
my_list = []

# Append the elements to my_list
my_list.append(12)
my_list.append(26)
my_list.append(13)
my_list.append(45)
my_list.append(30)

print(my_list)
# Insert the value 15 at the second position in the list
my_list.insert(1, 15)
print(my_list)

# Extend my_list with another list: []
my_list.extend([56, 63, 70])
print(my_list)

# Remove the last element from my_list
my_list.pop()
print(my_list)

# Sort my_list in ascending order
my_list.sort()
print(my_list)

# Find and print the index of the value 30 in my_list
index_of_30 = my_list.index(30)
print("Index of 30 in my_list:", index_of_30)
