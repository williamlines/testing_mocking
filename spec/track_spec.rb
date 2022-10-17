require "track"

RSpec.describe Track do
  it "can match keyword to the title or artist of the track" do
    track = Track.new("title_1", "artist_1")
    expect(track.matches?("title_1")).to be true
    expect(track.matches?("artist_1")).to be true
    expect(track.matches?("artist")).to be true
    expect(track.matches?("cheese")).to be false
  end
end