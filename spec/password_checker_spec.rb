require "password_checker"

RSpec.describe PasswordChecker do
  it "accepts passwords greater than or equal to 8 in length" do
    p_checker = PasswordChecker.new
    expect(p_checker.check("Iamalongword")).to eq true
  end
  it "fails if password is less than 8 in length" do
    p_checker = PasswordChecker.new
    expect{p_checker.check("small")}.to raise_error "Invalid password, must be 8+ characters."
  end
end
