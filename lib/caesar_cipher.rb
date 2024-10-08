require_relative '../lib/caesar_cipher'

def caesar_cipher(string, key)
  encrypted_string = ""

  string.each_char do |char|
    if char =~ /[A-Za-z]/
      base = char.ord < 91 ? 65 : 97
      new_char = ((char.ord - base + key) % 26 + base).chr
      encrypted_string += new_char
    else
      encrypted_string += char
    end
  end

  return encrypted_string
end
