require 'rails_helper'

RSpec.describe Developer, type: :model do
  before do
    @developer = Developer.new(
      name: 'Prosper',
      email: 'prosper@naija.com',
      url: 'prosper.com',
      work_place: 'Prosperous Industries, Inc.',
      code_name: 'unicodeveloper',
      bio: 'Naija Boi',
      tags: ['ladies man']
    )  
  end

  subject { @developer }

  it { is_expected.to be_valid }

  describe 'when name is not present' do
    before { @developer.name = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when email is not present' do
    before { @developer.email = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when url is not present' do
    before { @developer.url = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when work_place is not present' do
    before { @developer.work_place = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when code_name is not present' do
    before { @developer.code_name = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when bio is not present' do
    before { @developer.bio = '' }
    it { is_expected.not_to be_valid }
  end

  describe 'when tags are not present' do
    before { @developer.tags = nil }
    it { is_expected.not_to be_valid }
  end
  

end