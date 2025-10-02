require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @lists with all lists' do
      list1 = List.create!(name: 'List 1')
      list2 = List.create!(name: 'List 2')

      get :index

      expect(assigns(:lists)).to match_array([list1, list2])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
