class Bst

  def initialize(number)
    @first = number
    @tree = {}
  end

  def data
    @first
  end

  def tree
    @tree
  end

  def insert(new_number)
    if new_number <= @first
      @tree[@first] = [new_number, nil]
    else 
      @tree[@first] = [nil, new_number]
    end
  end

  def left
    Bst.new(search(@first, 0))
  end

  def right
    Bst.new(search(@first, 1))
  end

  def search(f, n)
    @tree[f][n]
  end


end

# four = Bst.new 4
# four.insert 2
# four.data
# four.left.data