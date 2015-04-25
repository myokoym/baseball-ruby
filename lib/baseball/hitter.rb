module Baseball
  module Hitter
    {
      pb:  :plate_appearance,
      ab:  :at_bat,
      h:   :hit,
      hr:  :home_run,
      bb:  :base_on_balls,
      so:  :strike_out,
      sb:  :stolen_bases,
      rbi: :runs_batted_in,
    }.each do |short_name, full_name|
      self.class_eval do
        attr_accessor :"#{short_name}"
        alias :"#{full_name}" :"#{short_name}"
      end
    end

    attr_accessor :singles, :doubles, :triples

    def init_hitter_attributes
      @pb = 0
      @ab = 0
      @h = 0
      @hr = 0
      @bb = 0
      @so = 0
      @sb = 0
      @rbi = 0
      @singles = 0
      @doubles = 0
      @triples = 0
    end

    def out!
      @pb += 1
      @ab += 1
    end

    def hit!
      @pb += 1
      @ab += 1
      @h += 1
      @singles += 1
    end

    def double!
      @pb += 1
      @ab += 1
      @h += 1
      @doubles += 1
    end

    def triple!
      @pb += 1
      @ab += 1
      @h += 1
      @triples += 1
    end

    def home_run!
      @pb += 1
      @ab += 1
      @h += 1
      @hr += 1
    end

    def bb!
      @pb += 1
      @bb += 1
    end

    def so!
      @pb += 1
      @ab += 1
      @so += 1
    end

    def sb!
      @sb += 1
    end

    def add_rbi(runs)
      @rbi += runs
    end

    def average
      @h.to_f / @ab
    end
    alias :ba :average
    alias :avg :average

    def total_bases
      singles + doubles * 2 + triples * 3 + hr * 4
    end
    alias :tb :total_bases

    def on_base_percentage
      (@h + @bb).to_f / @pb
    end
    alias :obp :on_base_percentage

    def slugging_percentage
      total_bases.to_f / @ab
    end
    alias :slg :slugging_percentage

    def on_base_plus_slugging_percentage
      on_base_percentage + slugging_percentage
    end
    alias :ops :on_base_plus_slugging_percentage
  end
end
