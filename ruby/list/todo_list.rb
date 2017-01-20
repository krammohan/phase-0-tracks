class TodoList
  attr_accessor :list
  
  def initialize (arr)
  	@list = arr	
  end
  
  def get_items
  	@list
  end
  
  def add_item(item)
	@list.push(item)
  end
  
  def delete_item(item)
  	@list.delete_at(@list.index(item))
  end
  
  def get_item(index)
  	p @list[index]
  end
  
end
