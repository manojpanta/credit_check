class Card

  def initialize(number)
    @number = number
  end

  def split
    @number.delete(" ").to_i.digits
  end

  def multiply
    split.map.with_index.map do |num, index|
      check(num, index)
    end
  end

  def check(num, index)
    # return num*2 if index.odd?
    # return num
    if index.odd?
      num * 2
    else
      num
    end
  end

  def subtract
    multiply.map do |num|
    check_1(num)
    end
  end

  def check_1(num)
    if num >= 10
      num - 9
    else
      num
    end
  end

  def sum
    subtract.sum
  end

  def valid?
    return "The card number is valid." if sum % 10 == 0
    return "Sorry the card number is not valid." if sum % 10 != 0
  end
end
