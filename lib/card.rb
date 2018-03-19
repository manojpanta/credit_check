class Card

  def initialize(number)
    @number = number
  end

  def split
    @number.delete(' ').to_i.digits
  end

  def multiply
    split.map.with_index do |num, index|
      if index.odd?
        num*2
      else
        num
      end
    end
  end


  def subtract
    multiply.map do |num|
      if num >9
        num-9
      else
        num
      end
    end
  end

  def sum
    subtract.sum
  end

  def valid?
    return 'The card number is valid.' if (sum % 10).zero?
    'Sorry the card number is not valid.'
  end
end
