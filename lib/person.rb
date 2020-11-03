# your code goes here
class Person 
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    # @happiness = number
    # @happiness = 10 if @happiness > 10
    # @happiness = 0 if @happiness < 0
    @happiness = number.clamp(0,10)
  end


  def hygiene=(hygiene) 
    @hygiene = hygiene.clamp(0,10)
  end

  def happy?
    # happiness > 7
    if @happiness > 7 
      true 
    else false
    end
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene= @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness= @happiness + 2
    self.hygiene= @hygiene - 3
    "♪ another one bites the dust ♫"
  end
 
  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end



def start_conversation(friend, topic)
  if topic == "politics" 
    self.happiness -= 2
    friend.happiness -= 2
    "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else topic == "other"
      "blah blah blah blah blah"
  end 
end

end











#   def start_conversation(friend, topic)
#     if topic == "politics"
#       self.happiness= @happiness - 2
#       friend.happiness= friend.happiness - 2
#       return "blah blah partisan blah lobbyist"
#     elsif topic == "weather"
#       self.happiness= @happiness + 1
#       friend.happiness= friend.happiness + 1
#       return "blah blah sun blah rain"
#     else
#       return "blah blah blah blah blah"
#     end
#   end


