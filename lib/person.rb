# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :happiness, :hygiene, :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end
  end
  def hygiene=(value)
    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end
  end

  def clean?
    @hygiene > 7
  end
  def happy?
    @happiness > 7
  end
  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness +=3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend, topic)
    value = ""
    case topic
    when "politics" 
      friend.happiness -= 2
      self.happiness -= 2
      value = "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness += 1
      self.happiness += 1
      value = "blah blah sun blah rain"
    else
      value = "blah blah blah blah blah"
    end
    value
  end
end