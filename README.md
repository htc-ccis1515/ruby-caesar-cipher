# ruby-caesar-cipher

# Caesar Cipher

## Introduction
The encryption scheme for this assignment is a simple substitution cipher. The scheme works by replacing each character in the plaintext with the corresponding character in a “ciphertext alphabet”, which is always the same length as the plaintext alphabet.  

For example:
plaintext alphabet:  ABCDEFGHIJKLMNOPQRSTUVWXYZ
ciphertext alphabet: KLMNOPQRSTUVWXYZABCDEFGHIJ

Given the ciphertext alphabet, if we encrypted the string “writing code is cool” it would become “gbsdsxq myno sc myyv”. This is because we replace “w” with “g”, “r” with “b” and so forth.

Decryption works exactly the same way, but in reverse. Thus, “myyv” using the above alphabets becomes “cool”.

## Generating a Ciphertext Alphabet from a Key
In your program, rather than having the user specify a ciphertext alphabet directly, you will instead have the user enter a secret key that will be used to generate the ciphertext alphabet. We will start by setting our ciphertext alphabet equal to the plaintext alphabet. Then, we will move each character to the left by the number of letters specified by the key.  When we get to the end, the letters wrap around.

So for example, if our key is 3, we will start with:
ciphertext alphabet:  ABCDEFGHIJKLMNOPQRSTUVWXYZ

Then move each letter to the left 3 positions:
ciphertext alphabet:  DEFGHIJKLMNOPQRSTUVWXYZABC


## Overview of Program Behavior
At the beginning of the program:
The computer will encrypt if the user enters encrypt or “e”, case insensitive.
The computer will decrypt if the user enters decrypt or “d”, case insensitive.

To handle text entered by the user that needs to be encrypted or decrypted, you should use the following rules for each character:
If it is a letter, replace as described above with a letter of the same case (uppercase or lowercase).
If it is anything else, leave it as is in the output.

So for example, if we had the alphabets below:
plaintext alphabet:  ABCDEFGHIJKLMNOPQRSTUVWXYZ
ciphertext alphabet: KLMNOPQRSTUVWXYZABCDEFGHIJ


And they entered “Writing code is Cool!!!”, we’d get “Gbsdsxq myno sc Myyv!!!” as output.

## Example Output
Here is an example of a user running the program:

Computer: Do you want to Encrypt or Decrypt?
User: Horse
Computer: Invalid input. Enter E or encrypt or D or decrypt.
Computer: Do you want to encrypt or decrypt?
User: Encrypt


Computer: Enter an encryption key. Key must be numeric.
User: 1000
Computer: Error, key must be greater than 0 and less than 26.
Computer: Enter an encryption key. Key must be numeric.
User: 3


Computer: What text would you like to encrypt?
User: Programming is my true destiny.
Computer: Surjudpplqj lv pb wuxh ghvwlqb.


[program ends]
[user restarts program]


Computer: Do you want to Encrypt or Decrypt?
User: d
Computer: Enter an encryption key. Key must be numeric.
User: 3
Computer: What text would you like to decrypt?
User: Surjudpplqj lv pb wuxh ghvwlqb.
Computer: Programming is my true destiny.
