require "diary"
require "secret_diary"

RSpec.describe "secret diary integration" do
  it "can read the contents of an unlocked diary" do
    diary = Diary.new("This is the contents")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "This is the contents"
  end
  
  it "can lock and unlock, and show/hide content" do
    diary = Diary.new("This is the contents")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "This is the contents"
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is the contents"
  end
end