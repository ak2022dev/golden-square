require 'gratitudes'

RSpec.describe Gratitudes do
  it "Initialises to empty" do
    gratitudes = Gratitudes.new
    result = gratitudes.format
    expect(result).to eq "Be grateful for: "
  end
  it "can add a gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("Good health")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Good health"    
  end
  it "can add more than one gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("Good health")
    gratitudes.add("New chair")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Good health, New chair"
  end
  it "can add more than two gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("Good health")
    gratitudes.add("New chair")
    gratitudes.add("Fine weather")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Good health, New chair, Fine weather"
  end
end
