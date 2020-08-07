require "spec_helper"

describe String do
  describe "#<<" do
    example "nilの追加できない" do
      s = "ABC"
      expect{s << nil}.to raise_error(TypeError)
    end
  end
end
