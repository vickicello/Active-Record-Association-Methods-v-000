class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.collect do |song|
      song.artist
    end.uniq.length
  end

  def all_artist_names
    self.artists.all
  end
end
