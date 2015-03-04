class Player
 MIN_HP  = 14
 MAX_HP = 20
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
    if(warrior.health != 20 && warrior.health >= @health && warrior.feel(:backward).wall? == true)
        warrior.rest!
    elsif(warrior.health < MIN_HP && warrior.health >= @health)
      if(warrior.feel(:backward).empty? == false && warrior.feel(:backward).captive? == true)
        warrior.rescue!(:backward)
      elsif(warrior.health < MIN_HP && warrior.feel(:backward).wall? == false)
        warrior.walk!(:backward)
      end
    else
      warrior.walk!
    end
  end
end