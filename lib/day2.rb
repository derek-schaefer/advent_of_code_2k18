module Day2
  def self.part1(input)
    counts_by_line = input
      .map(&:chars)
      .map { |letters|
        letters.reduce(Hash.new(0)) { |memo, letter|
          memo[letter] += 1
          memo
        }
      }

    lines_with_count = lambda { |count|
      counts_by_line.select { |counts|
        counts.value?(count)
      }
    }

    twos = lines_with_count.call(2)
    threes = lines_with_count.call(3)

    twos.size * threes.size
  end

  def self.part2(input)
    input
      .map(&:chars)
      .combination(2)
      .map { |(first, second)|
        first.zip(second).reduce([]) do |memo, (first, second)|
          memo << first if first == second
          memo
        end
      }
      .sort_by(&:size)
      .last
      .join
  end

  def self.load
    IO.read('lib/day2.txt').split
  end
end
