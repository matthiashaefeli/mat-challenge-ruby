class Bst

  def initialize(number, tree = { number => [nil, nil] })
    @first = number
    @tree = tree
    @array = []
    @array.push(number)
  end

  def data
    @first
  end

  def tree
    @tree
  end

  def insert(new_number, node = @first)
    if new_number <= node
      if @tree[node][0] == nil 
        @tree[node][0] = new_number
        @tree[new_number] = [nil, nil]
        @array.push(new_number)
      else 
        insert(new_number, @tree[node][0])
      end
    else 
      if @tree[node][1] == nil
        @tree[node][1] = new_number
        @tree[new_number] = [nil, nil]
        @array.push(new_number)
      else
        insert(new_number, @tree[node][1])
      end
    end
  end

  def left
    Bst.new(search(@first, 0), @tree)
  end

  def right
    Bst.new(search(@first, 1), @tree)
  end

  def search(f, n)
    @tree[f][n]
  end

  def each(&block)
    @array.sort.each(&block)
  end


end

# four = Bst.new 4
# four.insert 2
# four.data
# four.tree
# four.left.data