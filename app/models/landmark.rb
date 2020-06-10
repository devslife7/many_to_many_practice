
class Landmark
    attr_reader :name, :city
    @@all =[]

    def initialize(name, city)
      @name = name
      @city = city
      @@all << self
    end

    def self.all
        @@all
    end

    def trips
      Trip.all.select do |trip|
        trip.landmark == self
      end
    end

    def self.find_by_city(city)
      Landmark.all.select do |landmark|
        landmark.city == city
    end
  end

  def tourists
    trips.map do |trip|
      trip.tourist
    end
  end

end