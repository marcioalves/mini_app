require 'spec_helper'

describe "task_lists/edit" do
  before(:each) do
    @task_list = assign(:task_list, stub_model(TaskList,
      :name => "MyString",
      :description => "MyText",
      :public => false,
      :user => nil
    ))
  end

  it "renders the edit task_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_list_path(@task_list), "post" do
      assert_select "input#task_list_name[name=?]", "task_list[name]"
      assert_select "textarea#task_list_description[name=?]", "task_list[description]"
      assert_select "input#task_list_public[name=?]", "task_list[public]"
      assert_select "input#task_list_user[name=?]", "task_list[user]"
    end
  end
end
