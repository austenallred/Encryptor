class Encryptor
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")
    results = letters.collect do |letter|
      encrypt_letter(letter)
  end
      end_results = results.join
      puts "#{end_results}"
  end

  def cipher
    {'a' => 'а', 'b' => 'б', 'c' => 'ц', 'd' => 'д', 'e' => 'е', 'f' => 'ф', 'g' => 'г', 
   'h' => 'ч', 'i' => 'и', 'j' => 'й', 'k' => 'к', 'l' => 'л', 'm' => 'м', 'n' => 'н', 
   'o' => 'о', 'p' => 'п', 'q' => 'я', 'r' => 'р', 's' => 'с', 't' => 'т', 'u' => 'у', 
   'v' => 'в', 'w' => 'ш', 'x' => 'х', 'y' => 'ы', 'z' => 'з', 'nil' =>' '}
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

   def newcipher
    rotation = 13
    array = (' '..'z').to_a
    rotated_array = array.rotate(rotation)
    pairs = array.zip(rotated_array)
    Hash[pairs]


end