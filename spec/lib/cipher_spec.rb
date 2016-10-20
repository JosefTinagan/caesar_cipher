require "spec_helper"
require "cipher"


describe Cipher do

	it "The say_hello method should return 'Hello'" do
		c = Cipher.new
		expect(c.say_hello).to eq "Hello"

	end

	it "The caesar_cipher method should accept parameters" do
		c = Cipher.new
		param = c.caesar_cipher("test",1)
		expect(param).to eq "test1"
	end
end