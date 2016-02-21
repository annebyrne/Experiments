class TodoList 

#getter method
	attr_reader :list, :taglist
	
	def initialize
		@list = []
		@taglist = TagList.new
	end

#add new task to list
	
	def add_task(task)
		@list << task
	end

#no built in removal method, use the standard delete method

#sort by date method

	def prioritize
	#need a list object, which is an array of tasks
		@list.sort_by! { |task| task.deadline}
		#load
		@list.map {|task| task.to_v}
	end

	def display
		frame = []
		frame = @list.each {|task| task.to_v}
		return frame
	end

	def complete(task)
		task.mark_done
		if task.done == true
			@list.delete(task)
		end
		@list
	end

	def add_tag(tag, task)	
		@taglist = {tag => task.to_v} 
		@taglist.assoc(tag)
	end
	
	def tagged_with(tag)
		@taglist.assoc(tag)
	end

end
