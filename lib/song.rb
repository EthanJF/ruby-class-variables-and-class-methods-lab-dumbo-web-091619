class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        if @@genre_count[self.genre]
            @@genre_count[self.genre] += 1
        else
            @@genre_count[self.genre] = 1
        end
        if @@artist_count[self.artist]
            @@artist_count[self.artist] += 1
        else
            @@artist_count[self.artist] = 1
        end
    end

end