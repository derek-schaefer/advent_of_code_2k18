require 'set'

module Day1
  def self.part1(input)
    input.sum
  end

  def self.part2(input)
    frequency = 0
    frequencies = Set.new([frequency])

    input.cycle do |change|
      frequency += change

      break if frequencies.include?(frequency)

      frequencies << frequency
    end

    frequency
  end

  def self.load
    IO.readlines('lib/day1.txt')
      .map(&:strip)
      .map(&:to_i)
  end
end
