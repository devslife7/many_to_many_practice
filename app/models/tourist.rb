class Tourist
    attr_accessor :name

    @@all =[]

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.each do |tourist|
            if tourist.name == name
                return tourist
            end
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        self.trips.collect do |trip|
            trip.landmark
        end
    end

    def visit_landmark(landmark)
        Trip.new(landmark, self)
    end

    def never_visited
        Trip.all.select do |trip|
            trip.tourist != self
        end
    end
    
    

end