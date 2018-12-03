def frequency(file)
  sum = 0

  file.each_line do |line|
    sum += line.to_i
  end

  sum
end

puts "Frequency is: #{frequency File.open("input1.txt")}"
