def frequency(file)
  lines = []
  sums = [0]

  file.each_line do |line|
    lines << line.to_i
  end

  lines.cycle do |line|
    res = sums.last + line
    return res unless sums.index(res).nil?
    sums << res
  end
end

puts "Frequency is: #{frequency File.open("input1.txt")}"
