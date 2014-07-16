require '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase

      def setup

         @a = Numbers.new
 
      end

     def teardown

       @a=nil
 
     end


  def test_num
    assert_equal '1st',@a.convert1(1)            
    assert_equal '2nd',@a.convert1(2)
    assert_equal '3rd',@a.convert1(3)
    assert_equal '4th',@a.convert1(4)
    assert_equal '21st',@a.convert1(21)
    assert_equal '32nd',@a.convert1(32)
    assert_equal '43rd',@a.convert1(43)
    assert_equal '54th',@a.convert1(54)
    assert_equal '114th',@a.convert1(114)
  
  end



end 
