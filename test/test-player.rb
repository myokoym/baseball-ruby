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
    assert_equal(1, @player.single)
  end
end
