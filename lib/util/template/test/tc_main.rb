# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMainYEARDAY < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('input_sample.txt', MainYEARDAY.part1('input_sample.txt'))
  end
  test 'part2 sample' do
    assert_equal('input_sample.txt', MainYEARDAY.part2('input_sample.txt'))
  end
  test 'part1 real' do
    assert_equal('input.txt', MainYEARDAY.part1('input.txt'))
  end
  test 'part2 real' do
    assert_equal('input.txt', MainYEARDAY.part2('input.txt'))
  end
end
