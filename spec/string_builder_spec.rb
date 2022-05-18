require 'string_builder'

RSpec.describe StringBuilder do
  it "initialises with an empty string" do
    string_builder = StringBuilder.new
    result = string_builder.output
    expect(result).to eq ""
  end

  it "adds a string and returns new string" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    result = string_builder.output
    expect(result).to eq "Hello"
  end

  it "adds a string and returns the length" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    result = string_builder.size
    expect(result).to eq 5
  end

  it "adds strings together and returns the length" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    string_builder.add(" Jennie")
    result = string_builder.size
    expect(result).to eq 12
  end

  it "adds strings together and returns the new string" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    string_builder.add(" Jennie")
    result = string_builder.output
    expect(result).to eq "Hello Jennie"
  end
end