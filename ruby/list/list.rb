class TodoList
	attr_accessor :item

	def initialize
		@item = item
		@list = ["do the dishes", "mow the lawn"]
	end

	def add_item(item)
		@list << item 
	end

	def delete_item(item)
	  @list.delete("do the dishes")
	end
	
	def retrieve_item(index)
	  @list[index]
	end
end

=begin
todo = TodoList.new
todo.add_item("mop") 
todo.delete_item("do the dishes")
todo.retrieve_item(0)
=end
