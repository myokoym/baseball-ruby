module Baseball
  class Player
    attr_reader :pb, :ab, :h
    def initialize
      @pb = 0
      @ab = 0
      @h  = 0
    end

    def out!
      @pb += 1
      @ab += 1
    end

    def hit!
      @pb += 1
      @ab += 1
      @h  += 1
    end
  end
end
