
class Player
  def play_turn(warrior)
    # cool code goes here
    if(warrior.feel.empty? == true && warrior.health == 20)
    warrior.walk!
    elsif(warrior.feel.empty? == true && warrior.health < 20)
    warrior.rest!
  else
    warrior.attack!
  end
  end
end
  