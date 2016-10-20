require "spec_helper"
require "cipher"


describe Cipher do

	it "The say_hello method should return 'Hello'" do
		c = Cipher.new
		expect(c.say_hello).to eq "Hello"

	end
end