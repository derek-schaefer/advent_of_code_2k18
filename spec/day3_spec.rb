require 'day3'

describe Day3 do
  describe '.part1' do
    it 'examples' do
      expect(
        Day3.part1(
          [
            '#1 @ 1,3: 4x4',
            '#2 @ 3,1: 4x4',
            '#3 @ 5,5: 2x2'
          ]
        )
      ).to be(4)
    end

    it 'actual' do
      expect(Day3.part1(Day3.load)).to be(106501)
    end
  end

  describe '.part2' do
    it 'examples' do
      expect(
        Day3.part2(
          [
            '#1 @ 1,3: 4x4',
            '#2 @ 3,1: 4x4',
            '#3 @ 5,5: 2x2'
          ]
        )
      ).to be(3)
    end

    it 'actual' do
      expect(Day3.part2(Day3.load)).to be(632)
    end
  end
end
