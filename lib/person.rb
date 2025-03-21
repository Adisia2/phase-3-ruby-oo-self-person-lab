# your code goes here
class Person
    attr_reader :name , :happiness, :hygiene
    attr_accessor :bank_account
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
  def name
    @name
  end
  def bank_account
    @bank_account
  end

  def happiness=(happiness)
    @happiness = [[0, happiness].max, 10].min
  end

  def hygiene=(hygiene)
    @hygiene = [[0, hygiene].max, 10].min
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out

    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
end
  

  def call_friend(friend)
    self.happiness +=3
    friend.happiness +=3
   "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(person, topic)
    self.happiness += 1
    person.happiness += 1
    "Hey #{person.name}, have you heard about #{topic}?"
  end
  
  def start_conversation(person, topic)
    self.happiness += 1
    person.happiness += 1
    "Hey #{person.name}, have you heard about #{topic}?"
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
    else
        "blah blah blah blah blah"
    end
end
  
  
end