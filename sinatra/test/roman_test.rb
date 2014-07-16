require '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase
   def setup

         @a = Roman.new
 
      end

     def teardown

       @a=nil
 
     end

  def test_one
    assert_equal 'I',@a.convert2(1)
    assert_equal 'II',@a.convert2(2)
    assert_equal 'III',@a.convert2(3)
    assert_equal 'IV',@a.convert2(4)
    assert_equal 'V',@a.convert2(5)
    assert_equal 'VI',@a.convert2(6)
    assert_equal 'VII',@a.convert2(7)
    assert_equal 'IX',@a.convert2(9)
    assert_equal 'X',@a.convert2(10)
    assert_equal 'XIV',@a.convert2(14)
    assert_equal 'XXXVII',@a.convert2(37)
    assert_equal 'XXXXVI',@a.convert2(46)
    assert_equal 'LV',@a.convert2(55)
    assert_equal 'LXXV',@a.convert2(75)
    assert_equal 'LXXXVII',@a.convert2(87)
    assert_equal 'CCCLXXXXVII',@a.convert2(397)
    assert_equal 'DCCLXXXXIX' ,@a.convert2(799)
    assert_equal 'M',@a.convert2(1000)
  end



end  
