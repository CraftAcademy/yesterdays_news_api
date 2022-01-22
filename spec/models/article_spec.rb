RSpec.describe Article, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :category_id }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :category_id }
  end

  describe 'Factory' do
    it 'is expected to have a valid Factory' do
      expect(create(:article)).to be_valid
    end
  end
end
