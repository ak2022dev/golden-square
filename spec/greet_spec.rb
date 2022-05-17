# File: greet_spec.rb
require 'greet'

RSpec.describe "greet method" do
  it "Says Hello, username" do
    expect(greet("Amir")).to eq "Hello, Amir"
  end
end
