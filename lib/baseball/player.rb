require "baseball/hitter"

module Baseball
  class Player
    include Hitter

    def initialize
      init_hitter_attributes
    end
  end
end
