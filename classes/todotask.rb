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

	def to_s
		@name
	end
=begin
#parse dates? why isn't it working?
	def date_type(deadline)
		if deadline.is_a? String == true
			deadline.to_datetime!
		end
	end
=end


end
