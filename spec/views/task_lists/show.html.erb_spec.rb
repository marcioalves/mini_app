require 'spec_helper'

describe "task_lists/show" do
  before(:each) do
    @task_list = assign(:task_list, stub_model(TaskList,
      :name => "Name",
      :description => "MyText",
      :public => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
