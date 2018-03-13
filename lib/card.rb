class Card

  def initialize(number)
    @number = number
  end

  def split
    @number.to_i.digits
  end

  def multiply
    split.map.with_index.map do |num, index|
      if index.odd?
        num * 2
      else
        num
      end
    end
  end

  def substract
    multiply.map do |num|
      if num >= 10
        num - 9
      else
        num
      end
    end
  end

  def sum
    substract.sum
  end

  def valid?
    if sum % 10 == 0
    "The number is valid"
    else
    "Sorry the number is not valid"
    end
  end



end
