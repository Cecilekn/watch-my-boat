class TasksController < ApplicationController
  def index
  end

  def create
    redirect_to dashboard_path
  end
end
