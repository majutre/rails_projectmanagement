# frozen_string_literal: true

class TasksReflex < ApplicationReflex
  def sort
    tasks = JSON.parse(element.dataset.tasks)
    tasks.each do |task|
      saved_task = Task.find(task['id'])
      saved_task.update(position: task['position'])
    end
  end
end
