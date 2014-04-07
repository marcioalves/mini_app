class Task < ActiveRecord::Base
  belongs_to :task_list

  validates_presence_of :name, :description

  accepts_nested_attributes_for :task_list
end
