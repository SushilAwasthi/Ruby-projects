class Caesar
  UPPER_CASE = ("A".."Z").to_a
  LOWER_CASE = ("a".."z").to_a
  attr_accessor :key
  
  def initialize()
    @key = key
  end
  def encrypt()
    print "enter key for encryption :"
    key = gets.to_i
    print "Enter the text to encrypt: "
    text = gets.chomp!
    encrypted =""
    text.each_char do |x|
    if UPPER_CASE.include?(x)
        index = (UPPER_CASE.index(x)+key)%26
        encrypted << UPPER_CASE[index]
      elsif LOWER_CASE.include?(x)
        index =(LOWER_CASE.index(x)+key)%26
        encrypted << LOWER_CASE[index]
      end
    end
   puts "encrypted text is #{encrypted}"
  end

  def decrypt()
    print "enter key for decryption"
    key = gets.to_i   
    print"enter the text to be decrypted :"
    text = gets.chomp
    decrypted =""
    text.each_char do |x|
      if UPPER_CASE.include?(x)
        index =(UPPER_CASE.index(x)-key)%26
        decrypted << UPPER_CASE[index]
      elsif LOWER_CASE.include?(x)
        index =(LOWER_CASE.index(x)-key)%26
        decrypted << LOWER_CASE[index]
      end
    end
   puts "Decrypted text is #{decrypted}" 
  end
end
 caesar = Caesar.new()
 puts caesar.encrypt()
 puts caesar.decrypt()


    