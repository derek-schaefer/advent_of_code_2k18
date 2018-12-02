require 'day1'

describe Day1 do
  describe '.part1' do
    it 'examples' do
      expect(Day1.part1([1, 1, 1])).to be(3)
      expect(Day1.part1([1, 1, -2])).to be(0)
      expect(Day1.part1([-1, -2, -3])).to be(-6)
    end

    it 'actual' do
      expect(Day1.part1(Day1.load)).to be(500)
    end
  end

  describe '.part2' do
    it 'examples' do
      expect(Day1.part2([1, -1])).to be(0)
      expect(Day1.part2([3, 3, 4, -2, -4])).to be(10)
      expect(Day1.part2([-6, 3, 8, 5, -6])).to be(5)
      expect(Day1.part2([7, 7, -2, -7, -4])).to be(14)
    end

    it 'actual' do
      expect(Day1.part2(Day1.load)).to be(709)
    end
  end
end
