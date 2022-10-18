require "cat_facts"

RSpec.describe CatFacts do
  it "can provide a cat fact with .provide" do
    receiver = double(:receiver)
    expect(receiver).to receive(:get)
      .with(URI("https://catfact.ninja/fact"))
      .and_return('{"fact":"A cat\u2019s back is extremely flexible because it has up to 53 loosely fitting vertebrae. Humans only have 34.","length":106}')
    
    cat_facts = CatFacts.new(receiver)
    expect(cat_facts.provide).to eq "Cat fact: A cat\u2019s back is extremely flexible because it has up to 53 loosely fitting vertebrae. Humans only have 34."
  end
end