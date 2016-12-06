###############################################################################
#
# Make a method to ask the user if they want to encrypt or decrypt a word.
#
# If the user enters encrypt or e (case insensitive), return E.
# If the user enters decrypt or d (case insensitive), return D.
# If the user enters anything else, keep asking until the input is valid.
#
###############################################################################
def encrypt_or_decrypt
  puts "Do you want to Encrypt or Decrypt"
  answer = gets.chomp
  if answer == 'encrypt'
    return 'E'
  elsif answer == 'decrypt'
    return 'D'
  end
end

end

###############################################################################
#
# Make a method to get the encryption/decryption key from the user.
# The method should ask the user for a number until a valid key is entered, then
# return back the key.
#
# A valid key is a number that is greater than 0 and less than 26.
#
###############################################################################
def get_encryption_or_decryption
  while number > 0 &&
end

###############################################################################
#
# Make a method to get the phrase to encryption/decryption from the user.
# The method should take a parameter to know if it is encrypting or decrypting.
# The method should return back the phrase entered.
#
###############################################################################
def get_phrase e_or_d
  if e_or_d.upcase == 'E'
    puts "What text would you like to encrypt?"
  else
    puts "What text would you like to decrypt?"
  end
answer = gets.chomp
return answer
end

phrase = get_phrase "E"
puts "Phrase to encrypt = " + phrase

phrase = get_phrase "D"
puts "Phrase to decrypt = " + phrase

###############################################################################
#
# Make a method to generate the cipher alphabet for the encryption algorithm.
# This method should take a key as input and return back the list of letters
# in the alphabet offset by that key.
#
# (More info on the cipher alphabet in the assignment instructions.)
#
###############################################################################
def get_cipherbet key
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
# start the cipherbet empty, we'll add letters one by one
  cipherbet = []
  pos = key
  # get letters from key to the end
  while pos < alphabet.length
    cipherbet.push alphabet[pos]
    pos = pos + 1
  end
  # add the letters from the beginning of the alphabet o the key
  pos = 0
while pos < key
  cipherbet.push alphabet[pos]
  pos = pos + 1
end

return cipherbet
end

#puts get_cipherbet 3
###############################################################################
#
# Make a method to determine if a letter is a lowercase letter.  The method
# should take a letter as input and return true if it is lowercase, and false
# otherwise.
#
###############################################################################
def is_lowecase letter
  if letter == letter.downcase
    return true
  else
    return false
  end

end

puts "Is l lowercase? " + is_lowecase("l").to_s
puts "Is L lowercase? " + is_lowecase("L").to_s

###############################################################################
#
# Make a method to get the position of a letter in a list.  If the letter is
# not found, return -1.
#
###############################################################################
def get_position_in_list alphabet, letter
  pos = 0
  while pos < alphabet.length
    alphabet_letter = alphabet[pos]
    if alphabet_letter == letter.upcase
      # if so, return position
      return pos
    end
    pos = pos + 1
  end
  return pos
end

alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
puts get_position_in_list alphabet, "C"
puts get_position_in_list alphabet, "c"
puts get_position_in_list alphabet, " "
puts get_position_in_list alphabet, "!"

###############################################################################
#
# Make a method to encrypt a letter.  This method should take as input:
#  - the alphabet (so we don't have to create it multiple times)
#  - the cipher alphabet
#  - the letter to encrypt
# and return back the encrypted letter.  If the letter is not found in the
# cipher alphabet, it cannot be encrypted so return the original value.
#
###############################################################################
def encrypt_letter alphabet, cipherbet, letter
# default for things not found in alphabet is to just return as
  encrypted_letter = letter
  # look for letter using method from above, -1 means not found
  pos = get_position_in_list alphabet, letter
  if pos == -1
    return encrypted_letter
  else
    encrypted_letter = cipherbet[pos]
    if is_lowercase(letter) == true
      encrypted_letter = encrypted_letter.downcase
    end
    return encrypted_letter
  end
end
alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
cipherbet = "KLMNOPQRSTUVWXYZABCDEFGHIJ".split("")
puts encrypt_letter alphabet, cipherbet, "d"
puts encrypt_letter alphabet, cipherbet, "D"
puts encrypt_letter alphabet, cipherbet, " "
###############################################################################
#
# Make a method to decrypt a letter.  This method should take as input:
#  - the alphabet (so we don't have to create it multiple times)
#  - the cipher alphabet
#  - the letter to decrypt
# and return back the decrypted letter.  If the letter is not found in the
# cipher alphabet, it cannot be decrypted so return the original value.
#
###############################################################################
def decrypt_letter alphabet, cipherbet, letter
decrypt_letter = encrypt_letter cipherbet, alphabet, letter
return decrypt_letter
end

###############################################################################
#
# Make a method to encrypt a phrase.  This method should take a phrase and a key
# and return back the encrypted phrase.
#
###############################################################################
def encrypt phrase, key
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
  cipherbet = get_cipherbet key
  result = ""
  phrase.each_char do |letter|
    encrypted_letter = encrypt_letter alphabet, cipherbet, letter
    result = result + encrypted_letter
  end
  return result
end
puts encrypt "Programming is my true destiny.", 3

###############################################################################
#
# Make a method to decrypt a phrase.  This method should take a phrase and a key
# and return back the decrypted phrase.
#
###############################################################################


##############################################################################
#
# Write the main program script here. (More details in assignment instructions.)
#
##############################################################################

# 1. Determine if we are encrypting or decrypting.
e_or_d = #change this to call the 1st method

# 2. Get encrypt/decrypt key.
key = 3 #change to call the 2nd method

# 3. Get the phrase to encrypt/decrypt.
phrase = get_phrase e_or_d

# 4. Display the results of the encryption/decryption.
result = "" #Change this to call either encrypt or decrypt method
