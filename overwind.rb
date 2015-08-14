# let's try this first as a single file and then see later if I need to break it out into multiple

# opening

system "clear"
x = 1
while x < 10000000
   puts x
   x = 2 * x
end

print "\n\n\n"

puts "\tIt's late. Too late. The kind of late where reality starts to blur."
puts "\tCrushed by the weight of the numbers on his mind,"
puts "\tLandon reaches for the bottle. He's trying to forget"
puts "\tthe last 72 hours, and as they start to slip from the edges"
puts "\tof his memory, other, darker feelings seep in, distorting the center..."
print "\n\n\n"

puts "\t\tPASSAGE 29 PRODUCTIONS PRESENTS"
puts "\t\tA Grisly Afternoon"
puts "\t\tby Mortimer Jensen"

print "\n\n\n"

print "press ENTER to continue  "
open = gets.chomp

if open.empty?
  system "clear"
end

# NEED SOME HELP WITH THIS. LOOP STRUCTURE IS FUNCTIONAL BUT UGLY.
# TRYING TO SIMPLY  PROMPT FOR THE ENTER KEY BEFORE CLEARING SCREEN

until open.empty?
  print "try again. just press ENTER this time."
  open = gets.chomp
end

if open.empty?
  system "clear"
end

# first scene

puts "BAR\n\n"
puts "The barkeeper is staring no-so-subtly at you and your empty glass,"
puts "and his frequent glances at the clock tell you that closing time is coming soon."
puts "There is a bathroom on the south side of the room and a neon sign illuminates the EXIT to the west.\n\n"
print "What direction would you like to go? "
dir_bar = gets.chomp
if dir_bar == "south" || dir_bar == "South"
  puts "\n\nPOTTY TIME\n\n"
elsif dir_bar == "west" || dir_bar == "West"
  puts "\n\nFREE AT LAST\n\n"
else
  print "Try again! "
end
