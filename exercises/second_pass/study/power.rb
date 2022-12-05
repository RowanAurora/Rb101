def power_sumdigTerm(n)
  result = [81]
  arr = (2..15).to_a
  (1..100).each do |num|
    for int in arr
    result << (num ** int) if (num ** int) == ((num ** int).digits.sum ** int)
    end
  end
  result.delete(1)
  result.sort[n]
end

p power_sumdigTerm(20)