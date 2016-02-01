require "spec_helper"
require_relative "../classes/todolist"

describe TodoList do

#write the smallest test possible
	it "returns a list for every object " do
		todo_list = TodoList.new
		result = todo_list.list
		expect(result).to eq []
	end


	it "returns a list of 1 when the input is 1" do
		todo_list = TodoList.new
		result = todo_list.add_task(1)
		expect(result).to eq [1]
	end

=begin redundant method
	it "removes x from a list of ['a','x','c'] when the user requests it" do
		todo_list = TodoList.new
		original = todo_list.add_tasks('a','x','c')
		result = original.remove('x')
		expect(result).to eq ['a','c']
	end
=end	

end
