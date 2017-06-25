/# Create a method to take a secret message #/
def encrypt(secret_message)
  /# set the index and define the first letter of the message  #/

  index = 0
  first_letter = secret_message[0]
  /# Do something to each letter of the text #/

  while index < secret_message.length - 1
     /# figure out the index #/
    p secret_message[index]
         /# add one to each letter #/

    secret_message[index] = secret_message[index + 1]
             /# do that to each letter #/

    index +=1
  end
               /# put the first letter back around #/

  secret_message[-1] = first_letter
  return secret_message

end

encrypt("mabel")

def decrypt(secret_message)
  index = 0
  first_letter = secret_message[0]
  while index < secret_message.length - 1
    p secret_message[index]
    secret_message[index] = secret_message[index - 1]
    index +=1
  end
  secret_message[-1] = first_letter
  return secret_message

end

encrypt("mabel")
decrypt