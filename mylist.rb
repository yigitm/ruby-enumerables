require_relative 'myenumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |e| yield(e) if block_given? }
  end
end
