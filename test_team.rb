require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test
  def test_to_hash_returns_proper_hash
    team_boop = Team.new('Boop', 8, ['Cece', 'Mao'])
    result = team_boop.to_hash

    expected = {
      team_name: 'Boop',
      level: 8,
      points: 0
    }

    assert_equal(expected, result)
  end
end
