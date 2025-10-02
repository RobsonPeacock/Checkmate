require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  let(:list) { List.create!(name: "My Test List") }
  let(:valid_attributes) { { content: "Get milk and bread" } }
  let(:invalid_attributes) { { name: "" } }

  describe "GET #index" do
    it "returns successful response" do
      get :index, params: { list_id: list.id }
      expect(response).to be_successful
    end

    it "assigns list's todos to @todos" do
      todo = list.todos.create!(content: "Buy groceries")
      get :index, params: { list_id: list.id }
      expect(assigns(:todos)).to match_array([todo])
    end
  end

  describe "POST #create" do
    context "with valid parameters" do
      it "creates a new todo" do
        expect {
          post :create, params: { list_id: list.id, todo: valid_attributes }
        }.to change(Todo, :count).by(1)
      end

      it "creates todo with correct attributes" do
        post :create, params: { list_id: list.id, todo: valid_attributes }
        expect(Todo.last.content).to eq("Get milk and bread")
      end
    end
  end

  describe "PATCH #update" do
    let(:todo) { list.todos.create!(valid_attributes) }
    let(:new_attributes) { { name: "Updated Task", content: "Updated content" } }

    context "with valid parameters" do
      it "updates the requested todo" do
        patch :update, params: { list_id: list.id, id: todo.id, todo: new_attributes }
        todo.reload
        expect(todo.content).to eq("Updated content")
      end
    end

    context "with invalid parameters" do
      it "does not update the todo" do
        original_content = todo.content
        patch :update, params: { list_id: list.id, id: todo.id, todo: invalid_attributes }
        todo.reload
        expect(todo.content).to eq(original_content)
      end
    end
  end
end
