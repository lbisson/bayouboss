require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @tournament = tournaments(:one)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Tournament.count' do
      post tournaments_path, params: { tournament: { name: "Hound Dog", num_rounds: 3 } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Tournament.count' do
      delete tournament_path(@tournament)
    end
    assert_redirected_to login_url
  end
end
