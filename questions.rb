class Questions
  
  attr_accessor :first, :second, :answer

  def initialize
    self.first = 0
    self.second = 0
    self.answer = self.first + self.second
  end

  def generate
    self.first = rand(10)
    self.second = rand(10)
    "What does #{self.first} plus #{self.second} equal?"
  end

  def answer
    self.first + self.second
  end

end
