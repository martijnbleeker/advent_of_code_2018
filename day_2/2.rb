require "pry"
def common_chars(file)
  lines = []

  file.each_line do |line|
    lines << line
  end

  lines.each do |line|
    chars = find_close_match(line, lines)
    next if chars.nil?
    return chars
  end
end

def find_close_match(line, lines)
  chars = line.chars

  lines.each do |other_line|
    common = common_chars_for(chars, other_line)
    return common unless common.nil?
  end

  nil
end

def common_chars_for(chars, line)
  common_chars = []
  uncommon_count = 0

  line.chars.each_with_index do |char, index|
    if char == chars[index]
      common_chars << char
    else
      uncommon_count += 1
      return nil if uncommon_count > 1
    end
  end

  return nil if uncommon_count == 0
  common_chars.join
end

puts "Common characters: #{common_chars File.open("input1.txt")}"
