require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe "creation" do
    before do
      @todos = FactoryBot.create_list(:todo, 5)
    end

    it 'can be created' do
      expect(@todos.all?(&:valid?)).to be(true)
    end

    it "validates the presence of content" do
      @todo = @todos.first
      @todo.content = ''

      expect(@todo).to_not be_valid
    end

    it "validates that content cannot be nil" do
      @todo = @todos.first
      @todo.content = nil

      expect(@todo).to_not be_valid
    end 
  end
end