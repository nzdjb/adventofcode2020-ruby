# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

# Class for solving puzzle 202006
class Main202006
  include PuzzleUtils
  def self.part1(input)
    PuzzleUtils.read_groups(input).sum { |group| group.split(/\s*/).uniq.size }
  end

  def self.part2(input)
    PuzzleUtils.read_groups(input).sum do |group|
      group.split(/\s*/).uniq.select do |question|
        group.split.all?(&:include?.with(question))
      end.size
    end
  end
end
