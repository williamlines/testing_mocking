require "diary"

RSpec.describe Diary do
  it "can return its contents" do 
    diary = Diary.new("This is the contents")
    expect(diary.read).to eq "This is the contents"
  end
end