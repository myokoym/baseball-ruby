require "baseball/player"

class PlayerTest < Test::Unit::TestCase
  class HitterTest < self
    def setup
      @hitter = Baseball::Player.new
    end

    def test_out
      @hitter.out!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(0, @hitter.h)
    end

    def test_hit
      @hitter.hit!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(1, @hitter.h)
      assert_equal(1, @hitter.singles)
      assert_equal(0, @hitter.doubles)
    end

    def test_double
      @hitter.double!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(1, @hitter.h)
      assert_equal(0, @hitter.singles)
      assert_equal(1, @hitter.doubles)
    end

    def test_triple
      @hitter.triple!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(1, @hitter.h)
      assert_equal(0, @hitter.singles)
      assert_equal(1, @hitter.triples)
    end

    def test_home_run
      @hitter.home_run!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(1, @hitter.h)
      assert_equal(0, @hitter.singles)
      assert_equal(1, @hitter.hr)
    end

    def test_bb
      @hitter.bb!
      assert_equal(1, @hitter.pb)
      assert_equal(0, @hitter.ab)
      assert_equal(0, @hitter.h)
      assert_equal(1, @hitter.bb)
    end

    def test_so
      @hitter.so!
      assert_equal(1, @hitter.pb)
      assert_equal(1, @hitter.ab)
      assert_equal(1, @hitter.so)
      assert_equal(0, @hitter.h)
    end

    def test_sb
      @hitter.sb!
      assert_equal(0, @hitter.pb)
      assert_equal(1, @hitter.sb)
    end

    def test_add_rbi
      assert_equal(0, @hitter.rbi)
      @hitter.add_rbi(2)
      assert_equal(2, @hitter.rbi)
    end

    def test_average
      @hitter.out!
      @hitter.hit!
      @hitter.out!
      expected = "0.333"
      assert_equal(expected, "%.3f" % @hitter.average)
      assert_equal(expected, "%.3f" % @hitter.ba)
      assert_equal(expected, "%.3f" % @hitter.avg)
    end

    def test_total_bases
      @hitter.hit!
      @hitter.double!
      @hitter.triple!
      @hitter.home_run!
      expected = 10
      assert_equal(expected, @hitter.total_bases)
      assert_equal(expected, @hitter.tb)
    end

    def test_on_base_percentage
      @hitter.hit!
      @hitter.out!
      @hitter.bb!
      @hitter.out!
      expected = 0.5
      assert_equal(expected, @hitter.on_base_percentage)
      assert_equal(expected, @hitter.obp)
    end

    def test_slugging_percentage
      @hitter.bb!
      @hitter.out!
      @hitter.out!
      @hitter.hit!
      @hitter.double!
      expected = 0.75
      assert_equal(expected, @hitter.slugging_percentage)
      assert_equal(expected, @hitter.slg)
    end

    def test_on_base_plus_slugging_percentage
      @hitter.bb!
      @hitter.out!
      @hitter.out!
      @hitter.hit!
      @hitter.double!
      expected = 1.35
      assert_equal(expected, @hitter.on_base_plus_slugging_percentage)
      assert_equal(expected, @hitter.ops)
    end
  end
end
