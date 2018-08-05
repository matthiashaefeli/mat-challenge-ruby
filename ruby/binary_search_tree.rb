class Bst

  def initialize(number)
    @first = number
    @tree = {}
  end

  def data(steps = 0)
    if steps == 0
      @first
    else
      search
    end
  end

  def tree
    @tree
  end

  def insert(new_number)
    if new_number <= @first
      @tree[@first] = [new_number, nil]
    else 
      @tree[@fist] = [nil, new_number]
    end
  end

  def left

  end

  def right

  end


end

four = Bst.new 4
four.insert 2
# four.data
four.left