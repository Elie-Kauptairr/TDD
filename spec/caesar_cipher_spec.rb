require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "shifts a single character" do
    expect(caesar_cipher("A", 3)).to eq("D")
  end

  it "shifts a string with uppercase and lowercase" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "handles wrapping from z to a" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "ignores non-alphabetical characters" do
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it "handles shifts larger than the alphabet length" do
    expect(caesar_cipher("abc", 27)).to eq("bcd")
  end
end
