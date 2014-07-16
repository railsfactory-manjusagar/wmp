require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit< Test::Unit::TestCase

  def setup

         @a = Spell_digit.new
 
      end

     def teardown

       @a=nil
 
     end


  def test_one
   assert_equal "one",@a.convert(1)
   assert_equal "five",@a.convert(5)
   assert_equal "hundred",@a.convert(100)
   assert_equal "twohundred",@a.convert(200)
   assert_equal "twohundred fourty nine",@a.convert(249)
   assert_equal "sixhundred eightty nine",@a.convert(689)
   assert_equal "sevenhundred eightty nine",@a.convert(789)
   assert_equal "onehundredand eleven",@a.convert(111)
   assert_equal "twohundredand twelve",@a.convert(212)
   assert_equal "ninehundred ninety nine",@a.convert(999)
   assert_equal "twothousand twohundrend twenty",@a.convert(2220)
   assert_equal "threethousand threehundrend eleven",@a.convert(3311)
   assert_equal "fivethousand",@a.convert(5000)
   assert_equal "fivethousand fivehundrend ninety nine",@a.convert(5599)
   assert_equal "ninethousand ninehundrend ninety nine",@a.convert(9999)
   assert_equal "tenthousand",@a.convert(10000)
   assert_equal "twentytwothousand twohundrend twenty two",@a.convert(22222)
   assert_equal "thirtythreethousand ninehundrend thirty three",@a.convert(33933)
   assert_equal "sixtysixthousand threehundrend sixty nine",@a.convert(66369)
   assert_equal "twentythree thousand",@a.convert(23000)
   assert_equal "fifty thousand",@a.convert(50000)
   assert_equal "onelakh twentythreethousand threehundrend thirty three",@a.convert(123333)
   
   
   
  end
end
