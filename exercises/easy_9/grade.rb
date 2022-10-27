def average(num_1, num_2, num_3)
  (num_1 + num_2 + num_3) / 3
end

def get_grade(num_1, num_2, num_3)
  num = average(num_1, num_2, num_3)
  case
  when (60..69).include?(num) then grade = 'D'
  when (70..79).include?(num) then grade = 'C'
  when (80..89).include?(num) then grade = 'B'
  when (90..100).include?(num) then grade = 'A'
  else grade = "F"
  end
  grade
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"