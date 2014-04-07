class Task < ActiveRecord::Base
  belongs_to :task_list

accepts_nested_attributes_for :task_list
end
