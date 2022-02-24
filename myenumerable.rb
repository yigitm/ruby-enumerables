module MyEnumerable
  def all?
    @list.each do |e|
      item = yield(e)
      unless item
        puts false
        return
      end
    end

    puts true
    nil
  end

  def any?
    @list.each do |e|
      item = yield(e)
      if item
        puts true
        return
      end
    end

    puts false
    nil
  end

  def filter; end
end
