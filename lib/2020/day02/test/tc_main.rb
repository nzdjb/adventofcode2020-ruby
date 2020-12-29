# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMain202002 < Test::Unit::TestCase
  test 'part1 trial' do
    assert_equal('2', Main202002.part1('input_trial.txt'))
  end
  test 'part2 trial' do
    assert_equal('1', Main202002.part2('input_trial.txt'))
  end
  test 'part1 real' do
    assert_equal('493', Main202002.part1('input.txt'))
  end
  test 'part2 real' do
    assert_equal('593', Main202002.part2('input.txt'))
  end
end
