class TodoList
	
	def initialize
		@list = []
	end

#getter method

	def list
		 @list
	end

#add new tasks to list
	
	def add_task(task)
		list << task
	end

end
