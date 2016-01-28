require "spec_helper"
require_relative "../classes/todolist"

describe TodoList do

	it "always returns a list" do
		todo_list = TodoList.new
		result = todo_list.initialize
		expect(result).to eq []
	end
=begin
	it "returns a list of [1, 2, 3] when the input is [1, 2, 3]" do
	todo_list = TodoList.new
	result = todo_list.initialize(1, 2, 3)
	expect(result).to eq [1, 2, 3]
	end
=end

end
