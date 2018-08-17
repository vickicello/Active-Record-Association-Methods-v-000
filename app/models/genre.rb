class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artist.count
  end

  def all_artist_names
    self.artist.all
  end
end
