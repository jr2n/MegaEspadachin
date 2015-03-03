class Player
 MIN_HP = 14
  def play_turn(warrior)
    # cool code goes here
    if(warrior.feel.empty?)
      b_hurt(warrior)
    elsif(warrior.feel.empty? == false && warrior.feel.captive? == true)
      warrior.rescue!
    else
      warrior.attack!
    end
  @health = warrior.health
  end
  
  def b_hurt(warrior)
    if(warrior.health < MIN_HP && warrior.health >= @health)
        warrior.rest!
    else
      warrior.walk!
    end
  end
end
  