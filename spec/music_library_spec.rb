require "music_library"

RSpec.describe MusicLibrary do
  it "adds instance of track and can return list will .all" do
    music_library = MusicLibrary.new
    track_1 = double(:track_1)
    track_2 = double(:track_2)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "can search with keywords" do
    music_library = MusicLibrary.new
    track_1 = double(:track_1, matches?: false)
    track_2 = double(:track_2, matches?: true)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("track_2")).to eq [track_2]
  end
end