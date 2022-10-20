require "string_repeater"

RSpec.describe StringRepeater do
  it "can return given string one time" do
    io = double(:io)
    string_repeater = StringRepeater.new(io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
    expect(io).to receive(:gets).and_return("HELLO")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("1")
    expect(io).to receive(:puts).with("Here is your result:\nHELLO")
    string_repeater.run
  end
  it "can return given string 10 times" do
    io = double(:io)
    string_repeater = StringRepeater.new(io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
    expect(io).to receive(:gets).and_return("HELLO")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("10")
    expect(io).to receive(:puts).with("Here is your result:\nHELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLO")
    string_repeater.run
  end
  it "can return given string zero time" do
    io = double(:io)
    string_repeater = StringRepeater.new(io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
    expect(io).to receive(:gets).and_return("HELLO")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Here is your result:\n")
    string_repeater.run
  end
  it "can return empty string zero time" do
    io = double(:io)
    string_repeater = StringRepeater.new(io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
    expect(io).to receive(:gets).and_return("")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Here is your result:\n")
    string_repeater.run
  end
  it "can return empty string many times" do
    io = double(:io)
    string_repeater = StringRepeater.new(io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string")
    expect(io).to receive(:gets).and_return("")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("20")
    expect(io).to receive(:puts).with("Here is your result:\n")
    string_repeater.run
  end
end