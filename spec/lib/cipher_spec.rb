require "spec_helper"
require "cipher"


describe Cipher do

	describe "#caesar_cipher" do
		it "spliting words correctly" do 
			c = Cipher.new
			param = c.caesar_cipher("abc",2)
			expect(param).to eq "cde"

		end

		it "retaining capitalization" do
			c = Cipher.new
			param = c.caesar_cipher("AaA",2)
			expect(param).to eq "CcC"

		end

		it "capitalization examples drool" do
			c = Cipher.new
			param = c.caesar_cipher("Drool",3)
			expect(param).to eq "Gurro"

		end

		it "spacing matters" do
			c = Cipher.new
			param = c.caesar_cipher("Ben Ten",1)
			expect(param).to eq "Cfo Ufo"

		end

		it "can go back to start from z to a" do
			c = Cipher.new
			param = c.caesar_cipher("z",1)
			expect(param).to eq "a"
		end

		it "more testing with looping around the array" do
			c = Cipher.new
			param = c.caesar_cipher("UVWXyz",5)
			expect(param).to eq "ZABCde"
		end

		it "accepts any non letter charaters" do
			c = Cipher.new
			param = c.caesar_cipher("Big!",2)
			expect(param).to eq "Dki!"
		end

		it "shifts even with large numbers" do
			c = Cipher.new
			param = c.caesar_cipher("Blue!",53)
			expect(param).to eq "Cmvf!"
		end
	end

	context "testing edge cases"  do
		it "asd" do
			c = Cipher.new
			expect(c.caesar_cipher("",0)).to eq nil
		end
	end


end