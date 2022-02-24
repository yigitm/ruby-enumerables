require_relative 'myenumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
    print @list
  end
end
