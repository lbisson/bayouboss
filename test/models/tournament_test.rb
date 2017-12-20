require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  def setup
    @user = users(:len)
    @tournament = @user.tournaments.new(name: "PMG Fun", num_rounds: 3, user_id: @user.id)
  end

  test "should be valid" do
    assert @tournament.valid?
  end

  test "Organizer id should be present" do
    @tournament.user_id = nil
    assert_not @tournament.valid?
  end

  test "name should be present" do
    @tournament.name = ""
    assert_not @tournament.valid?
  end

  test "number of rounds should be present" do
    @tournament.num_rounds = nil
    assert_not @tournament.valid?
  end

  test "numbe of rounds should be non-zero" do
    @tournament.num_rounds = 0
    assert_not @tournament.valid?
  end

  test "order should be descending, with soonest tournament first" do
    assert_equal tournaments(:two), Tournament.first
  end

end
