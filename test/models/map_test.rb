require 'test_helper'

class MapTest < ActiveSupport::TestCase
  setup do
    @map = maps(:bellevue)
  end

  test "should calclulate a distance given a path" do
    paths = ["a", "b", "c"]
    assert_equal @map.distance(paths), 4.0
  end
end
