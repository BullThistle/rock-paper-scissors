require "pry"

class Rock
  def beats(arg)
    if arg == "paper\n"
      return "win"
    elsif arg == "rock\n"
      return "tie"
    else
      return "lose"
    end
  end
end

class Paper
  def beats(arg)
    if arg == "scissors\n"
      return "win"
    elsif arg == "paper\n"
      return "tie"
    else
      return "lose"
    end
  end
end

class Scissors
  def beats(arg)
    if arg == "rock\n"
      return "win"
    elsif arg == "scissors\n"
      return "tie"
    else
      return "lose"
    end
  end
end


game = true


selection = rand(3)
if selection == 0
  selection = "rock"
elsif selection == 1
  selection = "scissors"
else
  selection = "paper"
end


rock = Rock.new
paper = Paper.new
scissors = Scissors.new


puts "Enter rock, paper, or scissors"
choice = gets
if selection == "rock"

  if (rock.beats(choice) == "win")
    game = "win"
  elsif(rock.beats(choice) == "tie")
    game = "tie"
  else
    game = "lose"
  end

  elsif selection == "scissors"
    if (scissors.beats(choice) == "win")
      game = "win"
    elsif(scissors.beats(choice) == "tie")
      game = "tie"
    else
      game = "lose"
    end

  elsif selection == "paper"
    if (paper.beats(choice) == "win")
      game = "win"
    elsif(paper.beats(choice) == "tie")
      game = "tie"
    else
      game = "lose"
    end
end

puts "The computer chose " + selection + " and you chose " + choice

puts "You " + game + "!"
