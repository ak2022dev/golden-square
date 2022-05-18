require 'present'

RSpec.describe Present do
  it "fails to unwrap if nothing to unwrap" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
  it "fails to wrap new contents if there are contents already" do
    present = Present.new
    present.wrap("bike")
    expect { present.wrap("books")}.to raise_error "A contents has already been wrapped."
  end
  context "if unwraps contents after contents have been wrapped" do
    it "returns contents after wrapped contents unwrapped" do
      present = Present.new
      present.wrap("bike")
      expect(present.unwrap).to eq "bike"
    end
  end
end