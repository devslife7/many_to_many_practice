class Trip
    attr_reader :landmark, :tourist

    @@all =[]

    def initialize(landmark, tourist)
      @landmark = landmark
      @tourist = tourist
      @@all << self
    end

    def self.all
        @@all
    end

end