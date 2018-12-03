def checksum(file)
  twice = 0
  thrice = 0

  file.each_line do |line|
    twice += 1 if frequency?(line, 2)
    thrice += 1 if frequency?(line, 3)
  end

  twice * thrice
end

def frequency?(line, amount)
  line.chars.each do |char|
    return true if line.count(char) == amount
  end

  false
end

puts "Checksum is: #{checksum File.open("input1.txt")}"
