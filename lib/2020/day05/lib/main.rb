# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

# Class for solving puzzle 202005
class Main202005
  include PuzzleUtils
  def self.part1(input)
    PuzzleUtils.read_lines(input).map { |line| calculate(line) }.max
  end

  def self.part2(input)
    max = part1(input)
    possibles = (1..max).to_a
    PuzzleUtils.read_lines(input).each { |line| possibles -= [calculate(line)] }
    possibles.last
  end

  def self.calculate(line)
    fb, lr = split_line(line).map { |part| translate(part) }
    fb * 8 + lr
  end

  def self.split_line(line)
    line.match(/([FB]{7})([LR]{3})/).captures
  end

  def self.translate(string)
    string.gsub(/[FL]/, '0').gsub(/[BR]/, '1').to_i(2)
  end
end
