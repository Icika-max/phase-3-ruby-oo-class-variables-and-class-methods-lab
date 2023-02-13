

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = ["Jay-Z", "Jay-Z", "Brittany Spears"]
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        result = @@artists
        @@artists = result.uniq
    end

    def self.genres
        song_genre = @@genres
        @@genres = song_genre.uniq
    end

    def self.genre_count
        # gnre = @@genres.uniq
        # result = Hash.new
        # result[gnre] = @@count
        # return result
        return @@genres.tally
    end

    def self.artist_count
        return @@artists.tally
    #     artist_songs = Hash.new
    #     artist_songs[@@artists] = @@count
    #     puts artist_songs
    end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# class Song
#     attr_accessor :name, :artist, :genre
    
#     @@count=0
#     @@all_songs=[]
#     @@artists=[]
#     @@genres=[]
  
#     def initialize(name,artist,genre)
#         @name=name
#         @artists=artist
#         @genre=genre
#         @@count+=1
#         @@all_songs<<self

#         @@artists<<artist
#         @@genres<<genre
#     end
#     def self.count
#         @@count
#       end
#       def self.song_count
#         @@all_songs.length
#       end
      
#       def self.genres
#         @@genres.uniq
#       end
      
#       def self.artists
#         @@artists.uniq
#       end
      

# end

    
