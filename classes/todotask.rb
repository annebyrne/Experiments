class Time
	require 'time'
end

class TodoTask 

	attr_accessor :name, :deadline

	def initialize(name, deadline)
		@name = name
		@done = false
		@deadline = deadline
	end

	def to_v
		@name
	end

end
