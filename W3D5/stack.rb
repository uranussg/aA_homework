class Stack
    def initialize
      # create ivar to store stack here!
      @store = []
    end

    def push(el)
      # adds an element to the stack
      @store.push(el)
      self
    end

    def pop
      # removes one element from the stack
      @store.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @store[-1]
    end
  end