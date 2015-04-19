from random import randint

letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

for i in xrange(26):
    print letters[i].ljust(10), str( randint(0,9) ).ljust(30)


