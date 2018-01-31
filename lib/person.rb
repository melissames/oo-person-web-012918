class Person

  #attr_accessor
  attr_reader :name, :happiness, :hygiene, :bank_account

  def initialize (name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def bank_account=(amount)
    @bank_account = bank_account
  end


  def happiness=(points)
    @happiness = points
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end



  def hygiene=(points)
    @hygiene = points
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -= 3)
    self.happiness=(@happiness += 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    self.happiness=(@happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == 'politics'
      self.happiness=(@happiness - 2)
      person.happiness=(person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness=(@happiness + 1)
      person.happiness=(person.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
