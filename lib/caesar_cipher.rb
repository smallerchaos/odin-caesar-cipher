def encode_to_caesar_cipher(string, number)
  puts string
  string_bytes = string.bytes
  converted_bytes = string_bytes.map do |byte|
    if byte >= 65 && byte <= 90 && (byte + number) > 90
      # Shifted upper case letter exceeds the end
      64 + ((byte + number) - 90)
    elsif byte >= 97 && byte <= 122 && (byte + number) > 122
      # Shifted lower case letter exceeds the end
      96 + ((byte + number) - 122)
    elsif byte >= 65 && byte <90 || byte >= 97 && byte < 122
      # Is a letter but doesn't exceed the end
      byte + number
    else
      # Not a letter
      byte
    end
  end
  caesar_cipher_string = converted_bytes.map do |byte|
    byte.chr
  end
  puts caesar_cipher_string.join('')
  return caesar_cipher_string.join('')
end

# Upper case letters ASCII 65 - 90
# Lower case letters ASCII 97 - 122
# 
# If byte is not between 65 and 90 || 97 and 122, return as is
# If byte is 90, wrap around to 65
# If byte is 122, wrap around to 97