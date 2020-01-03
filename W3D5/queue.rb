class Queue
    def initialize
      # create ivar to store stack here!
      @queue = []
    end

    def enqueue(el)
      # adds an element to the stack
      @queue.push(el)
    end

    def dequeue
      # removes one element from the q
      @queue.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the q
      @queue[0]
    end
  end