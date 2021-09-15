import ApplicationController from './application_controller'
export default class extends ApplicationController {

	sort(event){
		let element = document.getElementById('tasks-list')
		let tasks = document.getElementsByClassName('task-item')
		let taskList = Array.from(tasks).map((task, index) => {
			return { id: task.dataset.taskId, position: (index + 1) }
		})
		element.dataset.tasks = JSON.stringify(taskList)
		this.stimulate('TasksReflex#sort', element)
	}

	connect () {
		super.connect()
		// add your code here, if applicable
	}

}
