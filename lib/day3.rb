module Day3
  REGEX = /\A#(\d+) @ (\d+),(\d+): (\d+)x(\d+)\z/.freeze

  def self.part1(input)
    fabric(claims(input))
      .select { |_, elves| elves.size > 1 }
      .size
  end

  def self.part2(input)
    claims = claims(input)

    fabric = fabric(claims)
      .values
      .reduce(Hash.new(0)) { |memo, cs|
        memo[cs[0]] += 1 if cs.size == 1
        memo
      }

    claim = claims.find do |c|
      fabric[c[:elf]] == c[:area]
    end

    claim[:elf]
  end

  def self.claims(input)
    input
      .map { |line| line.match(REGEX).captures }
      .map { |elf, x, y, width, height|
        {
          elf: elf.to_i,
          x: x.to_i,
          y: y.to_i,
          width: width.to_i,
          height: height.to_i,
          area: width.to_i * height.to_i
        }
      }
  end

  def self.fabric(claims)
    claims.reduce(Hash.new) do |memo, claim|
      for x in (claim[:x] + 1)..(claim[:x] + claim[:width])
        for y in (claim[:y] + 1)..(claim[:y] + claim[:height])
          if memo.include?([x, y])
            memo[[x, y]] << claim[:elf]
          else
            memo[[x, y]] = [claim[:elf]]
          end
        end
      end
      memo
    end
  end

  def self.load
    IO.readlines('lib/day3.txt').map(&:strip)
  end
end
