# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

FIELDS = %w[byr iyr eyr hgt hcl ecl pid].freeze
RULES = {
  'byr': /^(19[2-9][0-9])|(200[0-2])$/,
  'iyr': /^20(1[0-9]|20)$/,
  'eyr': /^20(2[0-9]|30)$/,
  'hgt': /^(1([5-8][0-9]|9[0-3])cm|(59|6[0-9]|7[0-6])in)$/,
  'hcl': /^#[0-9a-f]{6}$/,
  'ecl': /^(amb|blu|brn|gry|grn|hzl|oth)$/,
  'pid': /^[0-9]{9}$/
}.freeze

# Class for solving puzzle 202004
class Main202004
  include PuzzleUtils

  def self.part1(input)
    groups = groups_to_hash(PuzzleUtils.read_groups(input))
    groups.select { |group| FIELDS.all? { |key| group.keys.include? key } }.size
  end

  def self.part2(input)
    groups = groups_to_hash(PuzzleUtils.read_groups(input))
    groups.select do |group|
      RULES.keys.all? do |key|
        group[key.to_s]&.match?(RULES[key])
      end
    end.size
  end

  def self.groups_to_hash(groups)
    groups.map(&:split.with(/\s+/)).map(&:map.with(&:split.with(/:/))).map(&:to_h)
  end
end
