module Math_Game
  class Player

    attr_reader :lifes, :name

    def initialize(name)
      name = name
      @lifes = 3
    end

    def loseLife
      @lifes = lifes - 1
      return lifes
    end
  end
end