class Encryptor
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
  letters = string.split("")

  results = []
  letters.each do |letter|
    encrypted_letter = encrypt_letter(letter)
    results.push(encrypted_letter)
  end

  results.join
end
# Join the results in one string
  def cipher
    {'a' => 'а', 'b' => 'б', 'c' => 'ц', 'd' => 'д', 'e' => 'е', 'f' => 'ф', 'g' => 'г', 
   'h' => 'ч', 'i' => 'и', 'j' => 'й', 'k' => 'к', 'l' => 'л', 'm' => 'м', 'n' => 'н', 
   'o' => 'о', 'p' => 'п', 'q' => 'я', 'r' => 'р', 's' => 'с', 't' => 'т', 'u' => 'у', 
   'v' => 'в', 'w' => 'ш', 'x' => 'х', 'y' => 'ы', 'z' => 'з',  }
  end
end