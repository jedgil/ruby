system "clear"
print "Pick a number from 1 to 50: "
a = Integer(gets.chomp)

print "Now pick a number higher than the last one, but still less than 50: "
b = Integer(gets.chomp)

ary1 = (a..b).to_a
ary2 = ary1.map { |i| i * 7 }

sum = ary2.reduce(:+)

puts ary2
puts "and the total is " + "#{sum}"

=begin
ary1 = (0..100).to_a

ary1.each { |i| puts i if i%3 == 0 && i%5 == 0 }
=end
