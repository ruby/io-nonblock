require "test_helper"

class Io::NonblockTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Io::Nonblock::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
