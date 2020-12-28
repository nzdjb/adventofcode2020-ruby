# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMainYEARDAY < Test::Unit::TestCase
  test 'part1 trial' do
    assert_equal('input_trial.txt', part1('input_trial.txt'))
  end
  test 'part2 trial' do
    assert_equal('input_trial.txt', part2('input_trial.txt'))
  end
  test 'part1 real' do
    assert_equal('input.txt', part1('input.txt'))
  end
  test 'part2 real' do
    assert_equal('input.txt', part2('input.txt'))
  end
end
