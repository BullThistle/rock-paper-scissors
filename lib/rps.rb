
class Rock
  def beats(arg)
    if arg == "scissors"
      return true
    else
      return false
    end
  end
end

class Paper
  def beats(arg)
    if arg == "rock"
      return true
    else
      return false
    end
  end
end

class Scissors
  def beats(arg)
    if arg == "paper"
      return true
    else
      return false
    end
  end
end
