class Array
  def accumulate
    each_with_object([]) do |x, result|
      result << yield(x)
    end
  end
end