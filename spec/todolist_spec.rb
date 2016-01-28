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

end
