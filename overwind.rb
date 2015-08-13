# let's try this first as a single file and then see later if I need to break it out into multiple

# opening

system "clear"
x = 1
while x < 10000000
   puts x
   x = 2 * x
end

print "\n\n\n"

puts "\tIt's late. Too late for many, and later than it should be."
puts "\tCrushed by the weight of the numbers on his mind, Landon"
puts "\treaches for the bottle. He's trying to forget the last"
puts "\t72 hours, and as they start to slip from the edges of his"
puts "\tmemory, other, darker feelings seep in, distorting the center..."
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
  
