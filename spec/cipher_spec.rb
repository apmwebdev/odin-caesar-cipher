require "./cipher"

describe "#encode_char" do
  it "properly shifts a lowercase letter" do
    expect(encode_char("a".bytes.first, 3)).to eql("d".bytes.first)
  end

  it "properly shifts lowercase letter back around to beginning of alphabet" do
    expect(encode_char("z".bytes.first, 3)).to eql("c".bytes.first)
  end

  it "properly shifts an uppercase letter" do
    expect(encode_char("A".bytes.first, 3)).to eql("D".bytes.first)
  end

  it "properly shifts uppercase letter back arround to beginning of alphabet" do
    expect(encode_char("Z".bytes.first, 3)).to eql("C".bytes.first)
  end

  it "ignores non-letter character" do
    expect(encode_char("$".bytes.first, 3)).to eql("$".bytes.first)
  end
end

describe "#caesar_cipher" do
  it "properly encodes a full string" do
    expect(caesar_cipher("Test 123$%*!", 10)).to eql("Docd 123$%*!")
  end
end

