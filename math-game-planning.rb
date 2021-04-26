class Player
  # stores lives
  # stores player_name
  
  # initializes with name and lives
  # attr_accessor for lives and player_name

  # method to substract player lives for wrong answers
  # method to reset lives after the game
end

class Questions
  # generate random generate random numbers
  # method to generate questions and answers
end

class Game
  # initializes with players 
  # attr_accessor for all variables
  # variable with current_player
  
  # game loop to run all methods (while loop) checks until player life is == 0
  # method to call questions array
  # method to compare the answer from gets.chomp variable with the answer
  # method to check player lives and determine if the game should continue and call the reset to player lives
end