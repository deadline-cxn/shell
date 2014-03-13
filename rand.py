import random
guesses_made = 0
number = random.randint(1, 20)
print 'I am thinking of a number between 1 and 20.'
while guesses_made < 6:
    guess = int(raw_input('Take a guess: '))
    guesses_made += 1
    if guess < number:
        print 'Your guess is too low.'

    if guess > number:
        print 'Your guess is too high.'

    if guess == number:
        break

if guess == number:
    print 'Good job! You guessed my number in {0} guesses!'.format(guesses_made)
else:
    print 'Nope. The number I was thinking of was {0}'.format(number)

