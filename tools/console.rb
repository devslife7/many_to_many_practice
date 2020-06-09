require_relative '../config/environment.rb'

eiffel_tower = Landmark.new("Eiffel Tower", "Paris")
statue_of_liberty = Landmark.new("Statue of Liberty", "New York City")
hollywood = Landmark.new("Hollywood", "Los Angeles")

bill1 = Tourist.new("Bill")
bill2 = Tourist.new("Bill")
tom = Tourist.new("Tom")
anny = Tourist.new("Anny")

trip1 = Trip.new(eiffel_tower, bill1)
trip2 = Trip.new(statue_of_liberty, tom)
trip3 = Trip.new(hollywood, anny)
trip4 = Trip.new(hollywood, tom)

puts 'Trip class includes all trips'
puts Trip.all.include?(trip1)
puts Trip.all.include?(trip2)
puts Trip.all.include?(trip3)
puts Trip.all.include?(trip4)

puts 'Tourist can find by name'
puts Tourist.find_by_name(bill1.name) == (bill1)
puts Tourist.find_by_name("Tom") == (tom)
puts Tourist.find_by_name(anny.name) == (anny)

puts 'Tourist knows its trips'
puts tom.trips.include?(trip2)
puts tom.trips.include?(trip4)

puts 'Tourist knows its landmarks'
puts tom.landmarks.include?(statue_of_liberty)
puts tom.landmarks.include?(hollywood)

puts 'Tourist makes a new trip'
puts anny.visit_landmark(eiffel_tower).class == Trip
puts anny.visit_landmark(eiffel_tower).tourist == anny

puts 'Tourist knows the landmarks that he/she has never traveled'
puts !bill1.never_visited.include?(eiffel_tower)





# binding.pry
