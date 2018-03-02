RSpec.describe StringSummation do
  it "has a version number" do
    expect(StringSummation::VERSION).not_to be nil
  end

  it "should add string contrain special charecter" do
    expect(StringSummation.add_string('1;2%/,,$$6,3')).to eql(12)
  end

  it "should return zero if string is empty" do
    expect(StringSummation.add_string('')).to eql(0)
  end

  it "should throw error if string contains negative value" do
    expect(StringSummation.add_string('-1;2%/,,$$6,3')).to raise_error("Negative Number is not allowed")
  end
end
