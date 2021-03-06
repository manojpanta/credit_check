require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_if_it_exists
    card = Card.new('5541808923795240')
    assert_instance_of Card, card
  end

  def test_if_split_works
    card = Card.new('5541808923795240')
    result = card.split.length
    assert_equal 16, result
  end

  def test_if_split_works
    card = Card.new('5541808923795240')
    result1 = [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5]
    assert_equal result1, card.split
  end

  def test_if_multiply_every_other_digit_works
    card = Card.new('5541808923795240')
    result = [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10]
    assert_equal result, card.multiply
  end

  def test_if_substract_works
    card = Card.new('5541808923795240')
    result = [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1]
    assert_equal result, card.subtract
  end

  def test_if_sum_works
    card = Card.new('5541808923795240')
    assert_equal 70, card.sum
  end

  def test_if_it_is_valid?
    card = Card.new('6011004936334222')
    assert_equal 'The card number is valid.', card.valid?
  end

  def test_if_it_works_for_amex
    valid_card = Card.new('342804633855673')
    assert_equal 'The card number is valid.',valid_card.valid?
    invalid_card  = Card.new('342801633855673')
    assert_equal 'Sorry the card number is not valid.', invalid_card.valid?
  end
end
