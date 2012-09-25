require_relative "./nobody/version"

module Nobody
  def self.included(klass)
    class << klass
      private
        def returns_nil_for(*methods)
          define_methods_with_return_value(nil, methods)
        end

        def returns_true_for(*methods)
          define_methods_with_return_value(true, methods)
        end

        def returns_false_for(*methods)
          define_methods_with_return_value(false, methods)
        end

        # takes a value and method array, defines instance methods returning that value
        def define_methods_with_return_value(value, methods)
          methods.each do |name|
            define_method name do
              value
            end
          end
        end
    end

  end

end
