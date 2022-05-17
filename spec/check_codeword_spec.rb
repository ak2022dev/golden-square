# File: spec/check_codeword_spec.rb
require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "Checks the correct code word" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "Checks a close code word" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  it "Checks the incorrect code word" do
    result = check_codeword("Amir")
    expect(result).to eq "WRONG!"
  end
end
