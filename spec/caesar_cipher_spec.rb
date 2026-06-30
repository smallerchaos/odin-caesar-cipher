require './spec/spec_helper'
require './lib/caesar_cipher'
RSpec.describe 'Caesar Cipher' do
  describe "encode string into Caesar Cipher" do
    it "returns 'Khoor Zruog!' for 'Hello World!'" do
      expect(encode_to_caesar_cipher('Hello World!', 3)).to eq("Khoor Zruog!")
    end

    xit "returns 'Go gsvv usvv dro owzobyb dyxsqrd!' for 'We will kill the emperor tonight!'" do
      message = "We will kill the emperor tonight!"
      shift = 10
      expected_output = "Go gsvv usvv dro owzobyb dyxsqrd!"
      expect(encode_to_caesar_cipher(message, shift)).to eq(expected_output)
    end
  end
end