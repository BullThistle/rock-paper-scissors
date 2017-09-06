class Player
  def initialize(choice)
    @choice = choice
  end
  def beats(arg)
    if ((@choice == 0 && arg == 2) || (@choice == 1 && arg == 0) || (@choice == 2 && arg == 1))
      return "win"
    elsif(@choice == arg)
      return "tie"
    else
      return "lose"
    end
  end
end

puts "Enter rock, paper, or scissors"
choice = gets.chomp

selection = rand(3)

if choice == "rock"
  choice_num = 0
elsif choice == "paper"
  choice_num = 1
else
  choice_num = 2
end

if selection == 0
  selection_word = "rock"
elsif selection == 1
  selection_word = "paper"
else
  selection_word = "scissors"
end


human = Player.new(choice_num)
comp = Player.new(selection)

game = human.beats(selection)

puts "You chose " + choice + " and the computer chose " + selection_word + ". You " + game + "!"
