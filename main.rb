def string_to_numbers(str)
  str.downcase.chars.map { |char| char.ord - 'a'.ord + 1 }
end

def numbers_to_string(num)
  num.map { |num| ( (num - 1) % 26 + 'a'.ord).chr }.join
end

def encrypt(word, key)
  arr = string_to_numbers(word)
  encrypted_word = arr.map { |value| value + key }
  numbers_to_string(encrypted_word)
end

def decrypt(word, key)
  arr = string_to_numbers(word)
  decrypted_word = arr.map { |value| value - key }
  numbers_to_string(decrypted_word)
end

key = 7
word = 'Tyranosauras-REX'
encrypted_word = encrypt(word, key)
decrypted_word = decrypt(encrypted_word, key)

words_list = ['Stegosauras', 'ENKYLOSAURAS', 'triceratops']
err = words_list.map { |item| encrypt(item, key) }
derr = err.map { |item| decrypt(item, key) }