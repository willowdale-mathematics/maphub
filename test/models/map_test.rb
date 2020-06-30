require 'test_helper'

class MapTest < ActiveSupport::TestCase
  setup do
    @map = maps(:bellevue)
  end

  test "should calclulate a distance given a path" do
    source = "a"
    destination = "c"
    expected_distance = 4.0
    assert_equal expected_distance, @map.distance(source, destination)
  end

  test "should shortest path" do
    source = "a"
    destination = "c"
    expected_path = ["a", "b", "c"]
    assert_equal expected_path, @map.shortest_path(source, destination)
  end
end
