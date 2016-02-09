class TodoList

#getter method
	attr_reader :list
	
	def initialize
		@list = []
	end

#add new task to list
	
	def add_task(task)
		@list << task
	end

#no built in removal method, use the standard delete method

#sort by date method

	def prioritize
	#need a list object, which is an array of tasks
		date_list = []
		date_list = @list.sort_by {|task| task.date}
		#need tasks, which are todo tasks objects
		#need to read the date of the tasks
		#need to print the list in order, calling the names of the task
	end

end
