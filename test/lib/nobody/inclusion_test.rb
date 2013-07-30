require_relative '../../test_helper'

describe Nobody do
  describe 'including it in a class' do
    it 'should make new methods' do
      class TestClass
        include Nobody
        returns_true_for :true_method
        returns_nil_for :nil_method
        returns_false_for :false_method
      end

      TestClass.new.must_respond_to(:true_method)
      assert TestClass.new.true_method
      assert TestClass.new.true_method('with', 'arguments')

      TestClass.new.must_respond_to(:false_method)
      assert_equal false, TestClass.new.false_method
      assert_equal false, TestClass.new.false_method('with', 'arguments')

      TestClass.new.must_respond_to(:nil_method)
      assert_nil TestClass.new.nil_method
      assert_nil TestClass.new.nil_method('with', 'arguments')
    end
  end
end
