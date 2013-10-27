module Baseball
  class Player
    attr_reader :pb, :ab, :h, :hr, :bb
    attr_reader :singles, :doubles, :triples
    def initialize
      @pb = 0
      @ab = 0
      @h  = 0
      @hr = 0
      @bb = 0
      @singles = 0
      @doubles = 0
      @triples = 0
    end

    def out!
      at_bat
    end

    def hit!
      at_bat
      @h  += 1
      @singles += 1
    end

    def double!
      at_bat
      @h  += 1
      @doubles += 1
    end

    def triple!
      at_bat
      @h  += 1
      @triples += 1
    end

    def home_run!
      at_bat
      @h  += 1
      @hr += 1
    end

    def bb!
      @pb += 1
      @bb += 1
    end

    private
    def at_bat
      @pb += 1
      @ab += 1
    end
  end
end
