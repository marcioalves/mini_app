class TaskList < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  validates_presence_of :name, :description


 accepts_nested_attributes_for :tasks
 end