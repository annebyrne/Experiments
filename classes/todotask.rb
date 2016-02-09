class TodoTask 

	attr_accessor :name, :deadline

	require 'time'

	def initialize(name, deadline)
		@name = name
		@dead = false
		@done = false
	end


end
