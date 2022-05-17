# File: spec/report_length_spec.rb
require 'report_length'

RSpec.describe "report_length method" do
  it "Tells us the length of a string" do
    result = report_length("Test string")
    expect(result).to eq "This string was 11 characters long."
  end
end
