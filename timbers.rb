system "clear"
x = 1
while x < 35
  print "PT! FC!\n"
  x = x + 1
end
print "\nPress ENTER to clear the screen."
clear = gets.chomp
if clear.empty? 
  system "clear"
  else print "wrong move, dirtbag\n\n\n"
end
