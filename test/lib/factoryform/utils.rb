class Array
  def move(from, to)
    insert(to, delete_at(from))
  end

  def move_object(obj, to)
    return self if index(obj).nil? # return original array if obj not found
    move(index(obj), to)
  end
end



