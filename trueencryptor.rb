class Encryptor
  def encrypt_letter(letter,rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string,rotation)
    letters = string.split("")
    letter = letters.collect do |letter|
      encrypt_letter(letter,rotation)
    end
      end_results = letter.join
      puts "#{end_results}"
  end

  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end
end

class Decryptor
  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    decipher[lowercase_letter]
  end

  def decrypt(string)
    letters = string.split("")
    results = letters.collect do |letter|
      decrypt_letter(letter)
  end
    end_results = results.join
    puts "#{end_results}"
  end

  def decipher
    {'а' => 'a', 'б' => 'b', 'ц' => 'c', 'д' => 'd', 'е' => 'e', 'ф' => 'f', 'г' => 'g', 
   'ч' => 'g', 'и' => 'i', 'й' => 'j', 'к' => 'k', 'л' => 'l', 'м' => 'm', 'н' => 'n', 
   'о' => 'o', 'п' => 'p', 'я' => 'q', 'р' => 'r', 'с' => 's', 'т' => 't', 'у' => 'u', 
   'в' => 'v', 'ш' => 'w', 'х' => 'x', 'ы' => 'y', 'з' => 'z', 'nil' =>' '}
   end
end