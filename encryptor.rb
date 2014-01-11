class Encryptor

  def encrypt(string,rotation)
      letters = string.split("")
      results = letters.collect do |letter|
        encrypt_letter(letter,rotation)
      end
      results.join
    end

  def decrypt(string,rotation)
    encrypt(string, -rotation)
  end

    def encrypt_letter(letter,rotation)
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
    end

  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_file(filename, rotation)
#1. Create the new file handle to the input file
#2. Read the text of the input file
#3. Encrypt the text
#4. Create a name for the output file
#5. Create an output file handle
#6. Write out the text
#7. Close the file
  end
end