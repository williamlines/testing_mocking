require "music_library"
require "track"

RSpec.describe "music_library and track integration" do 
  it "can return the track_list with .all" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title_1", "artist_1")
    track_2 = Track.new("track_2", "artist_2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "can search for tracks and artist names" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title_1", "artist_1")
    track_2 = Track.new("track_2", "artist_2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search "track").to eq [track_2]
    expect(music_library.search "artist").to eq [track_1, track_2]
    expect(music_library.search "artist_1").to eq [track_1]
    expect(music_library.search "cheese").to eq []
  end
end