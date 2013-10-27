require "baseball/player"

class PlayerTest < Test::Unit::TestCase
  def setup
    @player = Baseball::Player.new
  end

  def test_out
    @player.out!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(0, @player.h)
  end

  def test_hit
    @player.hit!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(1, @player.h)
    assert_equal(1, @player.singles)
    assert_equal(0, @player.doubles)
  end

  def test_double
    @player.double!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(1, @player.h)
    assert_equal(0, @player.singles)
    assert_equal(1, @player.doubles)
  end

  def test_triple
    @player.triple!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(1, @player.h)
    assert_equal(0, @player.singles)
    assert_equal(1, @player.triples)
  end

  def test_home_run
    @player.home_run!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(1, @player.h)
    assert_equal(0, @player.singles)
    assert_equal(1, @player.hr)
  end

  def test_bb
    @player.bb!
    assert_equal(1, @player.pb)
    assert_equal(0, @player.ab)
    assert_equal(0, @player.h)
    assert_equal(1, @player.bb)
  end

  def test_so
    @player.so!
    assert_equal(1, @player.pb)
    assert_equal(1, @player.ab)
    assert_equal(1, @player.so)
    assert_equal(0, @player.h)
  end

  def test_sb
    @player.sb!
    assert_equal(0, @player.pb)
    assert_equal(1, @player.sb)
  end

  def test_add_rbi
    assert_equal(0, @player.rbi)
    @player.add_rbi(2)
    assert_equal(2, @player.rbi)
  end

  def test_average
    @player.out!
    @player.hit!
    @player.out!
    expected = "0.333"
    assert_equal(expected, "%.3f" % @player.average)
    assert_equal(expected, "%.3f" % @player.ba)
    assert_equal(expected, "%.3f" % @player.avg)
  end

  def test_total_bases
    @player.hit!
    @player.double!
    @player.triple!
    @player.home_run!
    expected = 10
    assert_equal(expected, @player.total_bases)
    assert_equal(expected, @player.tb)
  end

  def test_on_base_percentage
    @player.hit!
    @player.out!
    @player.bb!
    @player.out!
    expected = 0.5
    assert_equal(expected, @player.on_base_percentage)
    assert_equal(expected, @player.obp)
  end
end
