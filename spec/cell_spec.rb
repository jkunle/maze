require 'cell'

describe Cell do
  let(:subject) { Cell.new(0, 0)}

  describe "creating cell" do
    it 'has row and column' do
      expect(subject.row).to be_zero
      expect(subject.column).to be_zero
    end
    it 'has a north, south east and west' do
      subject.north = 2
      subject.south = 1
      subject.east = 0
      subject.west = 0
      expect(subject.north).to eq(2)
      expect(subject.south).to eq(1)
      expect(subject.east).to be_zero
      expect(subject.west).to be_zero
    end

  end
  describe Cell, '#link' do
    it 'to cell is established' do
      cell = Cell.new(3, 4)
      expect(subject).to eq(subject.link(cell))
    end

  end
end