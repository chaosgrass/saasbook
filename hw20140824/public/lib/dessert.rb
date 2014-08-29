class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    if @calories < 200
      return true
    else
      return false
    end
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    super(flavor +' jelly bean', 5)
    @flavor = flavor
  end
  def delicious?
    if @flavor=='licorice'
      return false
    else
      return true
    end
  end
end
