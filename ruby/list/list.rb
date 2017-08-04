class TodoList
    attr_accessor :list
    def initialize(arr)
        @list = arr
    end
    def get_items
        @list
    end
    def add_item(item)
        list << item
        list
    end
    def delete_item(item)
        @delete_item=list.delete(item)
        #list
    end
    def get_item(id)
        @get_item=list[id]
    end
end

list = TodoList.new(["do the dishes", "mow the lawn"])
p list.get_items
p list.add_item("mop")
p list.get_items
p list.delete_item("do the dishes")
p list.get_items
p list.get_item(0)