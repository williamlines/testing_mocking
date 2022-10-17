class MusicLibrary
  def initialize
    @tracklist = []
  end
  
def add(track) 
  @tracklist << track
end

def all
  return @tracklist
end
  
  def search(keyword)
    search_results = []
    @tracklist.each do |track|
      if track.matches?(keyword)
        search_results << track
      end
    end
    return search_results
  end
end