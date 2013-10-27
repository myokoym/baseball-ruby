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

  def test_add_rbi
    assert_equal(0, @player.rbi)
    @player.add_rbi(2)
    assert_equal(2, @player.rbi)
  end
end
