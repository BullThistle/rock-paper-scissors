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




rock = Rock.new
paper = Paper.new
scissors = Scissors.new


puts "Enter rock, paper, or scissors"
choice = gets
# binding.pry
if (rock.beats(choice) == "win")
  game = "win"
elsif(rock.beats(choice) == "tie")
  game = "tie"
else
  game = "lose"
end

puts "The computer chose rock and you chose " + choice

puts "You " + game + "!"
