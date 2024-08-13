require 'rails_helper'

RSpec.describe List, type: :model do
  describe "creation" do
    before do
      @list = FactoryBot.create(:list)
    end

    it "can be created" do
      expect(@list).to be_valid
    end

    it "validates the presence of name" do
      @list.name = ''

      expect(@list).not_to be_valid
    end

    it "validates that name cannot be nil" do
      @list.name = ''

      expect(@list).not_to be_valid
    end
  end
end