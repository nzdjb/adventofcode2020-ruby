# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMainYEARDAY < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('[]', MainYEARDAY.part1('input_sample.txt').to_s)
  end
  test 'part2 sample' do
    assert_equal('[]', MainYEARDAY.part2('input_sample.txt').to_s)
  end
  test 'part1 real' do
    assert_equal('[]', MainYEARDAY.part1('input.txt').to_s)
  end
  test 'part2 real' do
    assert_equal('[]', MainYEARDAY.part2('input.txt').to_s)
  end
end
