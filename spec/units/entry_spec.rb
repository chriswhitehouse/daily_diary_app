require 'database_helpers'

describe Entry do
  let(:id) { 1 }
  let(:entry) { "Diary Entry Test" }

  describe '#new' do
    it 'should create a new instance of an Entry object' do
      result = Entry.new(id: id, entry: entry)
      expect(result).to be_a Entry
      expect(result.id).to eq 1
      expect(result.entry).to eq entry
    end
  end

  describe '.create' do
    it 'should allow creation of a diary entry' do
      result = described_class.create(entry: entry)
      persisted_data = persisted_data(id: result.id)

      expect(result).to be_a Entry
      expect(result.id).to eq persisted_data['id'].to_i
      expect(result.entry).to eq entry
    end
  end
end
