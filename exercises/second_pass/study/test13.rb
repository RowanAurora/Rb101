# 3 floors, based on what floor you call, elavator will go to floor. 

FLOORS = [1, 2, 3]
elevator = FLOORS.sample
puts "Elevator is at #{elevator} floor"

floor_go_to = 0
loop do 
  puts "Up or down?"
  floor_go_to = gets.chomp 
  break if floor_go_to.start_with?('u') || floor_go_to.start_with?('d')
end

if floor_go_to.start_with?('u') && elevator != 3
  elevator += 1
elsif floor_go_to.start_with?('d') && elevator != 1
  elevator -= 1
end   

case elevator
when 1 then puts "At floor one"
when 2 then puts "at floor two"
when 3 then puts "at floor three"
end




