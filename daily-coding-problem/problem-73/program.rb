class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data = LinkedListNode.new(value, @data)
    end
end

def print_values(list_node)
    if list_node
        print("#{list_node.value} --> ")
        print_values(list_node.next_node)
    else
        print("nill")
        return
    end
end

def reverse_list(list)
    stack = Stack.new()
    while list
        stack.push(list.value)
        list = list.next_node
    end
    
    return stack.data
end

node1 = LinkedListNode.new(9)
node2 = LinkedListNode.new(62, node1)
node3 = LinkedListNode.new(34, node2)

print_values(node3)
puts("\n-----")
revlist = reverse_list(node3)
print_values(revlist)
puts("\n")
