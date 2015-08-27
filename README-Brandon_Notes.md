I wrote my first text adventure in bash and I almost never programmed again. Ruby is probably a much better choice… See my comments below.

-Brandon

From: Jed Gilchrist
Date: Monday, August 17, 2015 at 12:02 PM
To: Brandon Burnett
Subject: OK dude, remember: you offered

https://github.com/jedgil/ruby/blob/master/overwind.rb

I’m writing a goofy little text game in ruby to teach myself the basics (and not just of ruby, but of git, terminal text editing, modern coding practices, etc. as well), and though it’s ugly I’d love to get your help. A couple of sections have me scratching my head.

1) Is there a cleaner way to do what I’m trying to do in lines 34-44?

It looks like the user input doesn’t actually matter here -- why even check it? Just ignore it, do your system “clear” and move on to the next bit. The user has to press enter in order for gets.chomp to return and anything they press before that can just get thrown away.

2) In lines 54-60 I want to keep prompting the user for an answer until they give the right one, but I can’t figure out how to loop back to the variable collection at the top once I say “try again”. 

You could try putting the code in a while loop:

while true do
  out = gets.chomp.downcase
  if out == "south"
    puts "goin' south!"
    gosouth
  elsif out == "north"
    puts "goin' north"
    gonorth
  else
    puts "type something take makes sense!"
    next
  end
end

If the user types “south”, the first conditional will be matched, it will print a statement, and then execute the gosouth function. Similar if the user types “north”. If the user doesn’t type anything that matches the conditional, it’ll output “type something that makes sense!” and move to the next iteration of the loop (that’s what next does) where the user will be prompted again.

The problem with this approach is that it’s going to get pretty unwieldy pretty quickly. You’re gonna have to write a loop like this for every situation and every room, etc, etc. And what if a player goes back to a room? You’re going to have a hard time keeping track of what already happened in that room. A real solution is going to require you write some kind of game engine that can keep track of the state of rooms, their inventory, connections, etc. About.com actually has an article on writing text adventures in ruby: http://ruby.about.com/od/textadventure/ss/Making-A-Text-Adventure-Game-In-Ruby.htm. It’s a little advanced but it illustrates how you can use classes and objects to represent room/player state and their interactions.

3) With this sort of game, your choices branch into different areas (I’m sure you’re familiar with Interactive Fiction being a vintage tech geek), but should I be calling those as whole separate .rb files? If so, how do I do that? If not, does everything just get nested on the same page?

I think it’s always a good idea to organize your code into separate files. In the ruby world that usually means classes/modules get their own files. But it really doesn’t matter, ruby will let you split things up however you want. This guide has some good info on organizing code into different files: http://rubylearning.com/satishtalim/including_other_files_in_ruby.html
