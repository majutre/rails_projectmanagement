# frozen_string_literal: true

class TaskComponent < ViewComponent::Base
  attr_reader :task
  with_collection_parameter :project
  
  def initialize(task:)
    @task = task
  end

  def render?
    task.persisted?
  end

  def status
    task.status  
  end
end
