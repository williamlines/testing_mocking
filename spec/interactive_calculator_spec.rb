require "interactive_calculator"

RSpec.describe InteractiveCalculator do
  it "can subtract two numbers that are both positive" do
    io = double(:io)
    calculator = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:\n4 - 3 = 1")
    calculator.run
  end
  it "can subtract two numbers that are not both positive" do
    io = double(:io)
    calculator = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("-3")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:\n-3 - 3 = -6")
    calculator.run
end
  it "works with zero" do
    io = double(:io)
    calculator = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Here is your result:\n0 - 0 = 0")
    calculator.run
  end
  it "fails when not given number" do
    io = double(:io)
    calculator = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("0")
    expect(io).to receive(:puts).with("Please enter another number")
    expect(io).to receive(:gets).and_return("john")
    expect{calculator.run}.to raise_error "Not a number"
  end
  it "fails when not given number" do
    io = double(:io)
    calculator = InteractiveCalculator.new(io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.")
    expect(io).to receive(:puts).with("Please enter a number")
    expect(io).to receive(:gets).and_return("peter")
    expect{calculator.run}.to raise_error "Not a number"
  end
end