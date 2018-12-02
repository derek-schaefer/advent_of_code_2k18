require 'day2'

describe Day2 do
  describe '.part1' do
    it 'examples' do
      expect(
        Day2.part1(
          [
            'abcdef',
            'bababc',
            'abbcde',
            'abcccd',
            'aabcdd',
            'abcdee',
            'ababab'
          ]
        )
      ).to be(12)
    end

    it 'actual' do
      expect(Day2.part1(Day2.load)).to be(5928)
    end
  end

  describe '.part2' do
    it 'examples' do
      expect(
        Day2.part2(
          [
            'abcde',
            'fghij',
            'klmno',
            'pqrst',
            'fguij',
            'axcye',
            'wvxyz'
          ]
        )
      ).to eq('fgij')
    end

    it 'actual' do
      expect(Day2.part2(Day2.load)).to eq('bqlporuexkwzyabnmgjqctvfs')
    end
  end
end
