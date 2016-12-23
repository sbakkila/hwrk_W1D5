class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
    end

    def show
      @stack
    end
  end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def deque
    @queue.shift
  end

  def show
    @queue
  end
end


class Map

  def initialize
    @map = []
  end

  def set(key, val)
    remove(key) if get(key)
    @map << [key, val]
  end

  def get(key)
    @map.each do |el|
      if el[0] == key
        return el[1]
      end
    end

    false
  end

  def delete(key)
    @map.each.with_index do |el, idx|
      if el[0] == key
        @map.delete_at(idx)
      end
    end
  end

end
