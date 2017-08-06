module Math_Game

  class Question

    def generateQuestion
      values = Array.new
      values << Random.rand(1...21)
      values << Random.rand(1...21)
      values
    end

    def checkAnswer? values, total
      if values[0].to_i + values[1].to_i != total.to_i
        return false;
      else
        return true
      end

    end

  end

end


