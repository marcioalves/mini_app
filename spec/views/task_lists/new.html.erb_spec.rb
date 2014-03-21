require 'spec_helper'

describe "task_lists/new" do
  before(:each) do
    assign(:task_list, stub_model(TaskList,
      :name => "MyString",
      :description => "MyText",
      :public => false,
      :user => nil
    ).as_new_record)
  end

  it "renders new task_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_lists_path, "post" do
      assert_select "input#task_list_name[name=?]", "task_list[name]"
      assert_select "textarea#task_list_description[name=?]", "task_list[description]"
      assert_select "input#task_list_public[name=?]", "task_list[public]"
      assert_select "input#task_list_user[name=?]", "task_list[user]"
    end
  end
end
