class Song

    @@count = 0
    @@genres = []
    @@artists = []
    @@song_list = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist
        @@count += 1
        @@song_list << self
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end


    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end
end


s1 = Song.new("1name", "1art", "1gen")

s2 = Song.new("2name", "2art", "2gen")

s3 = Song.new("3name", "3art", "3gen")
s3a = Song.new("3name", "3art", "3gen")
s3b = Song.new("3name", "3art", "3gen")


print Song.genre_count