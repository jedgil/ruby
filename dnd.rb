class Character

  attr_reader :name, :armorclass, :strength, :intelligence

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
  
  def armorclass=(value)
    if value == ""
      raise "Armor Class can't blank!"
#    elsif value > 10
#      raise "Armor Class must be less than 11!"
#    else
#      raise "That number won't do. Moving on."
    end
    @armorclass = value
  end

  def strength=(value)
    if value < 1
      raise "Attributes must be greater than 0!"
#    elsif value > 18
#      raise "Dice don't work that way!"
#    else
#      raise "That number won't do. Moving on."
    end
    @strength = value
  end

  def intelligence=(value)
    if value < 1
      raise "Attributes must be greater than 0!"
#    elsif value > 18
#      raise "Dice don't work that way!"
#    else
#      raise "That number won't do. Moving on."
    end
    @intelligence = value
  end
end

# I just realized that the methods above are not being called
# by the inputs below. I need to get that figured out.
# Trying some sample objects below to see if the logic above works or not.

fighter = Character.new
fighter.name = "Torvald"
fighter.armorclass = 5
fighter.strength = 17
fighter.intelligence = 12

  puts "Here are a couple of examples:"

  puts ""

  puts "One character is named #{fighter.name} with Armor Class of #{fighter.armorclass}, Strength of #{fighter.strength} and Intelligence of #{fighter.intelligence}."

mage = Character.new
mage.name = "Merlin"
mage.armorclass = 7
mage.strength = 11
mage.intelligence = 16

  puts ""

  puts "One character is named #{mage.name} with Armor Class of #{mage.armorclass}, Strength of #{mage.strength} and Intelligence of #{mage.intelligence}."

  puts "Press ENTER to continue."

  gets.chomp

system "clear"

puts "Let's make a new character!"
puts ""
puts "Give your character a name:"
  @name = gets.chomp
puts "Rate your character's Armor Class (the lower the better):"
  @armorclass = gets.to_i
puts "Grab some 6-sided dice and roll 3 of them. Add up the total to get your Strength and enter it here:"
  @strength = gets.to_i
puts "Roll again for your Intelligence score and enter it here:"
  @intelligence = gets.to_i
puts "Press ENTER to see your stats!"
  gets.chomp
puts "Your character is named #{@name} with Armor Class of #{@armorclass}, Strength of #{@strength} and Intelligence of #{@intelligence}."
