require_relative '../../lib/paiza/C/character_extraction'

describe 'Division' do
  describe '#division_check' do
    let(:ary) { [1, 2, 3, 4, 5, 6, 7] }
    let(:num) { @num }
    let(:set) { Division.new(ary, num).division_check }
    context 'numが3の時' do
      it '[[1, 2, 3], [4, 5, 6], [7]]を返す' do
        @num = 3
        expect(set).to eq [[1, 2, 3], [4, 5, 6], [7]]
      end
    end

    context 'numが9の時' do
      it '[1,2,3,4,5,6,7]を返す' do
        @num = 9
        expect(set).to eq [[1, 2, 3, 4, 5, 6, 7]]
      end
    end
  end
end

describe '#common_elements' do
  context '特定の3つの配列を渡された時' do
    it '[1,2]を返す' do
      ary1 = [1, 2, 3, 4, 5]
      ary2 = [1, 2, 5, 78]
      ary3 = [1, 2, 6, 7, 4]
      expect(common_elements(ary1, ary2, ary3)).to eq [1, 2]
    end
  end
end

describe '#max_palindrome' do
  context 'babadという文字列の場合' do
    it '3を返す' do
      str = 'babad'
      expect(max_palindrome(str)).to eq 3
    end
  end

  context 'abcdという文字列の場合' do
    it '1を返す' do
      str = 'abcd'
      expect(max_palindrome(str)).to eq 1
    end
  end
end
