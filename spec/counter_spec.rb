require 'counter'

RSpec.describe Counter do
  it "counts starting from zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
  it "keeps a count and adds to it" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far." 
  end
  it "it can add negative numbers" do
    counter = Counter.new
    counter.add(-1)
    result = counter.report
    expect(result).to eq "Counted to -1 so far."
  end
  it "it can add numbers to each other in sequence" do
    counter = Counter.new
    counter.add(-1)
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 4 so far."
  end
end