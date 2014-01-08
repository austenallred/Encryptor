class Encryptor
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")
    results = []
    letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter)
      results.push(encrypted_letter)
  end
end
# Join the results in one string
  def cipher
    {'a' => 'а', 'b' => 'б', 'c' => 'ц', 'd' => 'д', 'e' => 'е', 'f' => 'ф', 'g' => 'г', 
   'h' => 'ч', 'i' => 'и', 'j' => 'й', 'k' => 'к', 'l' => 'л', 'm' => 'м', 'n' => 'н', 
   'o' => 'о', 'p' => 'п', 'q' => 'я', 'r' => 'р', 's' => 'с', 't' => 'т', 'u' => 'у', 
   'v' => 'в', 'w' => 'ш', 'x' => 'х', 'y' => 'ы', 'z' => 'з', 'nil' =>' '}
  end

  def decipher
    {'а' => 'a', 'б' => 'b', 'ц' => 'c', 'д' => 'd', 'е' => 'e', 'ф' => 'f', 'г' => 'g', 
   'ч' => 'h', 'и' => 'i', 'й' => 'j', 'к' => 'k', 'л' => 'l', 'м' => 'm', 'н' => 'n', 
   'о' => 'о', 'п' => 'p', 'я' => 'q', 'р' => 'r', 'с' => 's', 'т' => 't', 'у' => 'u', 
   'в' => 'v', 'ш' => 'w', 'х' => 'x', 'ы' => 'y', 'з' => 'z',  }
  end
end