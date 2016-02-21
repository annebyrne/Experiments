require "spec_helper"
require_relative "../classes/todolist"
require_relative "../classes/todotask"

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

	it "sorts tasks ('a','b','d') by their  date" do
		todo_list = TodoList.new
		a = TodoTask.new('a', '24/7/15')
		b = TodoTask.new('b', '19/7/15')
		d = TodoTask.new('d', '1/7/15')
		[a, b, d].each {|task| todo_list.add_task(task) }
		result = todo_list.prioritize
		expect(result).to eq ['d','b','a']
	end

	it "sorts the following tasks ('shopping', 'gym', 'laundry') by their deadline" do
		todo_list = TodoList.new
		shopping = TodoTask.new('shopping', '27/1/16')
		gym = TodoTask.new('gym', '8/2/16')
		laundry = TodoTask.new('laundry', '25/1/16')
		[shopping, gym, laundry].each {|task| todo_list.add_task(task)}
		result  = todo_list.prioritize
		expect(result).to eq ['laundry','shopping','gym']
	end


	it "removes tasks from the todo list once their state is marked as done" do
		todo_list = TodoList.new
		homework = TodoTask.new('homework', '28/9/12')
		todo_list.add_task(homework)
		result = todo_list.complete(homework)
		expect(result).to eq []
	end

	it "adds tag Work to the pricing task" do
		todo_list = TodoList.new
		pricing = TodoTask.new('pricing rota', '22/2/16')
		todo_list.add_task(pricing)
		result = pricing.add_tag(work)
		expect(result).to eq 'work'
	end

end


