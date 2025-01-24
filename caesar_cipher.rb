def letters_to_int(str, cipher)
  str.chars.map do |char|
    if char == " "
      0 
    elsif char =~ /[a-z]/   
      char.ord - "a".ord + 1 + cipher
    elsif char =~ /[A-Z]/
       char.downcase.ord - "a".ord + 1 + cipher + 100
    else
      char
    end
  end
end
def caesar_cipher(arr)
  arr.map do |int|
    if int == 0
      " "
    elsif int.to_i >= 100
      ((int - 100) % 26 + "a".ord - 1).chr.upcase
    elsif int.is_a?(Integer)
      ((int) % 26 + "a".ord - 1).chr
    else
      int
    end
  end.join
end
array = letters_to_int("WHAT a string!", 5)
puts caesar_cipher(array) 
