system "clear"

def num_a
  a = 51

  until a <= 50
    print "Pick a number from 1 to 50: "
    a = Integer(gets.chomp)
    puts "Um, try again please." unless a <= 50
  end

  a
end

a = num_a

puts "\n"

def num_b
   b = 51

   until b <= 50
     print "Now pick a number higher than the last one, but still 50 or less: "
     b = Integer(gets.chomp)
     puts "Um, try again please." unless b <= 50
   end

   b
 end

b = num_b

=begin
if b < a || b > 50 then
  puts "nice try...now this shit won't work"
end
=end

puts "\n"
puts "press enter to see what happens next"
x = gets.chomp

ary1 = (a..b).to_a
ary2 = ary1.map { |i| i**2 }

sum = ary2.reduce(:+)

puts ary2
puts "and the total is " + "#{sum}"
