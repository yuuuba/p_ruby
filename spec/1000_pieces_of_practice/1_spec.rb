require_relative '../../lib/1000_pieces_of_practice/1'

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

  # context 'の時' do
  #   it 'を返す' do
  #   end
  # end
end
