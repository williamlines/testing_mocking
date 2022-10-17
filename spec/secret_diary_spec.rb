require "secret_diary"

RSpec.describe SecretDiary do
  it "can read the contents of an unlocked diary" do
    diary = double(:diary, read: "This is the contents")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "This is the contents"
  end

  it "can lock and unlock, and show/hide content" do
    diary = double(:diary, read: "This is the contents")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary.read).to eq "This is the contents"
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is the contents"
  end
end