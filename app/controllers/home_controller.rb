class HomeController < ApplicationController
	
  def index
   @task_lists =  TaskList.where(["user_id = ? or favorite = ?", current_user.id, true])

  end
end
