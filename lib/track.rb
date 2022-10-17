class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword) 
    if @title.include?(keyword) || @artist.include?(keyword)
      return true
    else
      return false
    end
  end
end