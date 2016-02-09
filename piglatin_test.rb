require "rubygems"
require "minitest/autorun"

class PiglatinTranslatorTest < MiniTest::Test
  def test_pig_becomes_igpay
    assert_equal "igpay", translate("pig")
  end
  
  def test_banana_becomes_ananabay
    assert_equal "ananabay", translate("banana")
  end
  
  def test_eat_becomes_eatyay
    assert_equal "eatyay", translate("eat")
  end
  
  def translate(word)
    if %w(a e i o u y).include?(word[0])
      "#{word}yay"
    else
      "#{word[1..-1]}#{word[0]}ay"
    end
  end
end