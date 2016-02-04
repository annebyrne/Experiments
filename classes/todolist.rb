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


end
