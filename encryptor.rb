class Encryptor

  def encrypt(string,rotation)
      letters = string.split("")
      results = letters.collect do |letter|
        encrypt_letter(letter,rotation)
      end
      to_print = results.join
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
    input = File.open(filename, "r")
    string = input.read
    encrypted_text = encrypt(string, rotation)
    output_filename = filename.gsub(".txt", ".txt.encrypted")
    output = File.open(output_filename, "w")
    output.write(encrypted_text)
    output.close
  end

  def decrypt_file(filename, rotation)
    input = File.open(filename, "r")
    string = input.read
    decrypted_text = encrypt(string, -rotation)
    output_filename = filename.gsub(".encrypted", ".decrypted")
    output = File.open(output_filename, "w")
    output.write(decrypted_text)
    output.close
  end   
end