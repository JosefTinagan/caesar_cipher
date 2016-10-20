class Cipher

	def test
		puts "hello"
	end

	def caesar_cipher(word, shift)
		puts word
		puts shift
	end
end

c = Cipher.new
c.test
c.caesar_cipher("lol",2)