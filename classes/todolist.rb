class TodoList

#getter method
	attr_reader :list
	
	def initialize
		@list = []
	end

#add new tasks to list
	
	def add_tasks(tasks)
		@list.push(tasks)
	end

#remove tasks from a list

	def delete(tasks)
		@list.delete("tasks")
		@list
	end

end
