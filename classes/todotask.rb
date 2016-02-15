class Time
	require 'time'
end

class TodoTask 

	attr_accessor :name, :deadline, :done

	def initialize(name, deadline)
		@name = name
		@done = false
		@deadline = deadline
	end

	def to_v
		@name
	end

	def mark_done
		@done = true
	end

end
