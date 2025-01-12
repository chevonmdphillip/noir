require "../../src/detector/detectors/*"

describe "Detect Ruby Rails" do
  options = default_options()
  instance = DetectorRubyRails.new options

  it "gemfile/single_quot" do
    instance.detect("Gemfile", "gem 'rails'").should eq(true)
  end
  it "gemfile/double_quot" do
    instance.detect("Gemfile", "gem \"rails\"").should eq(true)
  end
end
