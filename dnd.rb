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
    elsif value > 10
      raise "Armor Class must be less than 11!"
    end
    @armorclass = value
  end

  def strength=(value)
    if value < 1
      raise "Attributes must be greater than 0!"
    end
    @strength = value
  end

  def intelligence=(value)
    if value < 1
      raise "Attributes must be greater than 0!"
    end
    @intelligence
  end
end

system "clear"

puts "Let's make a new character!"
puts ""
puts "Give your character a name:"
  @name = gets.chomp
puts "Rate your character's armor class (the lower the better):"
  @armorclass = gets.chomp
puts "Grab some 6-sided dice and roll 3 of them. Add up the total to get your Strength and enter it here:"
  @strength = gets.chomp
puts "Roll again for your Intelligence score and enter it here:"
  @intelligence = gets.chomp
puts "Press ENTER to see your stats!"
  gets.chomp
puts "Your character is named #{@name} with armor class of #{@armorclass}, Strength of #{@strength} and Intelligence of #{@intelligence}."
