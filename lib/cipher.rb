class Cipher
	def caesar_cipher(word,shift)
		arr = (97.chr..122.chr).to_a
		word = word.split("")
		x = 0
		result_string = ""

		while word.length > x 
			y = 0
			capital = false
			has_space = false
			if(word[x] =~ /\W/ )
				has_space = true
			end
			if(has_space)
				result_string += word[x]
				x += 1
			else
				if(word[x] == word[x].upcase)
					word[x].downcase!
					capital = true
				end
					while word[x] != arr[y]

						y += 1
					end
				val_test = y + shift

				if(val_test > arr.length-1)
					val = val_test % arr.length
					temp = arr[val]
				else
					temp = arr[y+shift]
				end
				if capital
					temp = temp.upcase
				else
					temp = temp
				end
				result_string += temp
				x += 1
			end	
		end
		return result_string
	end
end