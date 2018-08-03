class CustomSet
  attr_accessor :member

  def initialize(list = [])
   @members = list
  end

  def members
    @members
  end

  def empty?
    @members.empty?
  end

  def member?(member)
    @members.include?(member)
  end

  def subset?(other)
    other.members.size >= @members.size && self.same(other)
  end 

  def same(other)
    if @members.size > 0
      @members.each do |m|
        if !other.member?(m)
          return false
        end
      end
    end
    true
  end

  def disjoint?(other)
    other.members.each do |m|
      if self.member?(m)
        return false
      end
    end
    true
  end

  def add(member)
    @members.push(member) unless self.member?(member)
    self
  end

  def ==(other_object)
    return false unless other_object.class == self.class
    return false unless other_object.members.size == @members.size
    other_object.members.each do |n|
      return false unless self.member?(n)  
    end   
    true
  end

  def intersection(other)
    CustomSet.new(@members & other.members)
  end

  def difference(other)
    CustomSet.new(@members - other.members)
  end

  def union(other)
    CustomSet.new( @members.concat(other.members).uniq )
  end

end
