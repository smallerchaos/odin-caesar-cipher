def encode_to_caesar_cipher(string, number)
  string_bytes = string.bytes
  converted_bytes = string_bytes.map do |byte|
    puts byte
    if byte == 90
      puts "last upper case letter"
      65 + (number - 1)
    elsif byte ==112
      puts "last lower case letter"
      97 + (number - 1)
    elsif byte >= 65 && byte <90 || byte >= 97 && byte < 122
      puts "all other letters"
      byte + number
    else
      puts "It's NOT a letter"
      byte
    end
  end
  puts "=========="
  print converted_bytes
  puts "=========="
  caesar_cipher_string = converted_bytes.map do |byte|
    byte.chr
  end
  print caesar_cipher_string
  puts caesar_cipher_string.join('')
  return caesar_cipher_string.join('')
end

# Upper case letters ASCII 65 - 90
# Lower case letters ASCII 97 - 122
# 
# If byte is not between 65 and 90 || 97 and 122, return as is
# If byte is 90, wrap around to 65
# If byte is 122, wrap around to 97

# strip! to remove trailing and leading whitespace
 
#  if message.is_a? String == true && message.ascii_only? == true
  # else
  #   return "This isn't a string and cannot be encoded into a cipher."
  # end