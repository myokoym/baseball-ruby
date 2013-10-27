module Baseball
  class Player
    attr_reader :pb, :ab, :h
    attr_reader :single, :double
    def initialize
      @pb = 0
      @ab = 0
      @h  = 0
      @single = 0
      @double = 0
    end

    def out!
      @pb += 1
      @ab += 1
    end

    def hit!
      @pb += 1
      @ab += 1
      @h  += 1
      @single += 1
    end

    def double!
      @pb += 1
      @ab += 1
      @h  += 1
      @double += 1
    end
  end
end
