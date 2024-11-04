name = input('What is your name: ')
message = (name + ' you are very welcome to my repository. ')
print(message)
note = 'Moving further, answer the following prompt; '
print(note)
question = input('Have you accessed this repository before: ')
print(question)
if question == 'yes':
    print('you can access more @ https://github.com/Chalex07.')
    exit()
else:
    print('Enter your details.')

birth_year = int(input('What year were you born? '))
present_age = 2024 - birth_year
location = input('Location of application: ')
print('Your name is ' + name + ' aged ' + str(present_age)  + ' you have accessed this github repository, you are located in ' + location + ' i will appreciate your feedback. Thanks for your time')
