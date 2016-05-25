system "clear"

def num_a
  print "Pick a number from 1 to 50: "
  $a = Integer(gets.chomp)
    until $a < 50
      puts "Um, try again please."
# need something here to prompt for another response until $a is less than 50
    end
end

num_a

puts "\n"
print "Now pick a number higher than the last one, but still less than 50: "
b = Integer(gets.chomp)
if b < $a || b > 50 then
  puts "nice try...now this shit won't work"
end

puts "\n"
puts "press enter to see what happens next" 
x = gets.chomp

ary1 = ($a..b).to_a
ary2 = ary1.map { |i| i**$a }

sum = ary2.reduce(:+)

puts ary2
puts "and the total is " + "#{sum}"

=begin
ary1 = (0..100).to_a

ary1.each { |i| puts i if i%3 == 0 && i%5 == 0 }
=end
