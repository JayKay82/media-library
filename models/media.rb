class Media
  attr_accessor :title, :genre, :rating, :format

  def initialize(title, genre, rating, format)
    @title, @genre, @rating, @format = title, genre, rating, format
  end

  def to_s
    "Title: #{title}\n" +
    "Genre: #{genre}\n" +
    "Rating: #{rating}\n" +
    "Format: #{format}"
  end
end

class Game < Media
  attr_accessor :platform, :review

  def initialize(title, genre, rating, format, platform, review)
    super(title, genre, rating, format)
    @platform, @review = platform, review
  end

  def to_s
    super +
    "\nPlatform: #{platform}\n" +
    "Review: #{review}"
  end
end

class Album < Media
  attr_accessor :artist, :duration

  def initialize(title, genre, rating, format, artist, duration)
    super(title, genre, rating, format)
    @artist, @duration = artist, duration
  end

  def to_s
    super +
    "\nArtist: #{artist}\n" +
    "Duration: #{duration} Minutes"
  end
end

class Movie < Media
  attr_accessor :duration, :year, :review

  def initialize(title, genre, rating, format, duration, year, review)
    super(title, genre, rating, format)
    @duration, @year, @review = duration, year, review
  end

  def to_s
    super +
    "\nDuration: #{duration} Minutes\n" +
    "Year: #{year}\n" +
    "Review: #{review}"
  end
end
