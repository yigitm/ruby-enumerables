require_relative 'mylist'
require_relative 'myenumerable'

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
