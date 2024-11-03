# name = input('What is your name? ')
# print('Applicants name is ' + name)
# birth_year = int(input('What year were you born? '))
# present_age = 2024 - birth_year
# print('Applicants age is ' + str(present_age))
# message = ' Your application has been considered, answer the next questions: '
# print(message)

# question = input('Have You applied before? ')
# print(question)
# if question == "no":
#     print("You can continue your application ")
# else:
#     print("You are not eligible for this application ")
# if question == 'yes':
#     exit()
# Second_question = input('your phone number: ')
# print('Applicants Phone number: ' + Second_question)
# print(name + ' You are welcome to the company')



name = input('What is your name: ')
print(name)
message = (name + ' you are very welcome to this new application session. ')
print(message)
note = 'Moving further, answer the following prompt; '
print(note)
question = input('Have you applied before: ')
print(question)
if question == 'yes':
    print('You are not eligible for this program.')
    exit()
else:
    print('Enter your details.')

birth_year = int(input('What year were you born? '))
present_age = 2024 - birth_year
print('You are ' + str(present_age) + ' years old')
state = input('State of Origin: ')
print('You are a native of ' + state)
edu = input('Level of Education: ')
print('Your highest level of education is ' + edu)
final_message = input('Certificates: ')
print('Please come with the ' + final_message + ' certificates when you are coming for the interview')
