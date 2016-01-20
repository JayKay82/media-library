require_relative '../models/media.rb'

RSpec.describe Game do
  let(:game) { Game.new('Battlefront', 'Shooter', 5,
                        'Optical Disc', 'PS4',
                        'An amazing multiplayer experience!') }

  context 'attributes' do
    it 'should respond to title' do
      expect(game).to respond_to(:title)
    end

    it 'should respond to genre' do
      expect(game).to respond_to(:genre)
    end

    it 'should respond to rating' do
      expect(game).to respond_to(:rating)
    end

    it 'should respond to format' do
      expect(game).to respond_to(:format)
    end

    it 'should respond to platform' do
      expect(game).to respond_to(:platform)
    end

    it 'should respond to review' do
      expect(game).to respond_to(:review)
    end
  end

  context '#to_s' do
    it 'prints a game entry as a string' do
      expect(game.to_s).to eq("Title: Battlefront\n" +
                              "Genre: Shooter\n" +
                              "Rating: 5\n" +
                              "Format: Optical Disc\n" +
                              "Platform: PS4\n" +
                              "Review: An amazing multiplayer experience!")
    end
  end
end

RSpec.describe Album do
  let(:album) { Album.new('Overdrive', 'Drum \'n Bass - Techno', 5,
                          'CD', 'Aphrodite', 72) }

  context 'attributes' do
    it 'should respond to artist' do
      expect(album).to respond_to(:artist)
    end

    it 'should respond to duration' do
      expect(album).to respond_to(:duration)
    end
  end

  context '#to_s' do
    it 'prints an album entry as a string' do
      expect(album.to_s).to eq("Title: Overdrive\n" +
                               "Genre: Drum 'n Bass - Techno\n" +
                               "Rating: 5\n" +
                               "Format: CD\n" +
                               "Artist: Aphrodite\n" +
                               "Duration: 72 Minutes")
    end
  end
end

RSpec.describe Movie do
  let(:movie) { Movie.new('Star Wars: The Force Awakens', 'Sci-Fi', 5,
                          'not owned', 136, 2015,
                          'Loved it! First real SW since Jedi.') }

  context 'attributes' do
    it 'should respond to duration' do
      expect(movie).to respond_to(:duration)
    end

    it 'should respond to year' do
      expect(movie).to respond_to(:year)
    end

    it 'should respond to review' do
      expect(movie).to respond_to(:review)
    end
  end

  context '#to_s' do
    it 'prints a movie entry as a string' do
      expect(movie.to_s).to eq("Title: Star Wars: The Force Awakens\n" +
                               "Genre: Sci-Fi\n" +
                               "Rating: 5\n" +
                               "Format: not owned\n" +
                               "Duration: 136 Minutes\n" +
                               "Year: 2015\n" +
                               "Review: Loved it! First real SW since Jedi.")
    end
  end
end
