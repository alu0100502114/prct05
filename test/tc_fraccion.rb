require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  # Antes de cada test
  def setup
    @f1 = Fraccion.new(6,10)
    @f2 = Fraccion.new(3,4)
    @f3 = Fraccion.new(-6,10)
    @f4 = Fraccion.new(-6,-10)
    @f5 = Fraccion.new(6,-10)
  end

  # Tras cada test
  def tear_down
    # nada que hacer
  end

  # Test de tipo en constuctor
  def test_type_check
    assert_raise(ArgumentError) {(Fraccion.new('1','1'))}
    assert_raise(ArgumentError) {(Fraccion.new('1',1))}
    assert_raise(ArgumentError) {(Fraccion.new(1,'1'))}
    assert_raise(ArgumentError) {(Fraccion.new(1,0))}
  end

  # Test suma
  def test_add
    assert_equal("27/20", (@f1 + @f2).to_s, "Suma 1")
    assert_equal("0", (@f1 + @f3).to_s, "Suma 2")
    assert_equal("0", (@f1 + @f5).to_s, "Suma 3")
    assert_equal("6/5", (@f1 + @f4).to_s, "Suma 4")
    assert_equal("3/20", (@f2 + @f3).to_s, "Suma 5")
  end

end
