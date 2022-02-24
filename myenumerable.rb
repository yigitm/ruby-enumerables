module MyEnumerable
  def all?
    value = true
    @list.each do |e|
      item = yield(e)
      unless item
        value = false
        break
      end
    end
    puts value
  end

  def any?
    value = false
    @list.each do |e|
      item = yield(e)
      if item
        value = true
        break
      end
    end
    puts value
  end

  def filter
    arr = []
    @list.each do |e|
      item = yield(e)
      arr.push(e) if item
    end
    print arr
  end
end
