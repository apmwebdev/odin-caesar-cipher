# frozen_string_literal: true

def caesar_cipher(string, shift)
  string_ascii = string.bytes
  encoded_str = string_ascii.map { |char| encode_char(char, shift) }
  encoded_str.pack("c*")
end

def encode_char(char, shift)
  if char.between?(97, 122)
    shifted_char = char + shift
    if shifted_char > 122
      shifted_char = 96 + shifted_char - 122
    end
    shifted_char
  elsif char.between?(65, 90)
    shifted_char = char + shift
    if shifted_char > 90
      shifted_char = 64 + shifted_char - 90
    end
    shifted_char
  else
    char
  end
end

# puts "Enter string:"
# input_string = gets.chomp
# puts "Enter shift:"
# input_shift = gets.chomp.to_i

# caesar_cipher(input_string, input_shift)
p caesar_cipher("test", 2)
p caesar_cipher("test", 10)
