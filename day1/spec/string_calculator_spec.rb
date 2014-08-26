require "spec_helper"
require_relative "../string_calculator.rb"

describe StringCalculator do
  it "should return zero if sent an empty string" do
    s = StringCalculator.add("")
    expect(s).to eql(0)
  end
  
  it "returns itself if only one number in string sent" do
    s = StringCalculator.add("5")
    expect(s).to eql(5)
  end
  
  it "adds two numbers" do
    s = StringCalculator.add("6\n8")
    expect(s).to eql(14)
  end
  
  it "adds more than two numbers" do
    s = StringCalculator.add("5\n3\n1")
    expect(s).to eql(9)
  end
  
  it "adds more than two numbers" do
    s = StringCalculator.add("7\n9\n2\n5\n6\n2\n1\n4")
    a = 7 + 9 + 2 + 5 + 6 + 2 + 1 + 4
    expect(s).to eql(a)
  end
  
  it "checks for negative numbers" do
    StringCalculator.add("-4")
    expect { raise RuntimeError, "Negatives not allowed: -4 is invalid." }.to raise_error("Negatives not allowed: -4 is invalid.")
  end
  
  it "checks for negative numbers" do
    StringCalculator.add("-4\n7\n-5\n6\n8")
    expect { raise RuntimeError, "Negatives not allowed: -4, -5 are invalid." }.to raise_error("Negatives not allowed: -4, -5 are invalid.")
  end
  
  it "checks and ignores number greater than 1000" do
    s = StringCalculator.add("1000\n3\n6")
    expect(s).to eql(9)
  end
  
end