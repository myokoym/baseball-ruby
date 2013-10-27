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
      at_bat
    end

    def hit!
      at_bat
      @h  += 1
      @single += 1
    end

    def double!
      at_bat
      @h  += 1
      @double += 1
    end

    private
    def at_bat
      @pb += 1
      @ab += 1
    end
  end
end
