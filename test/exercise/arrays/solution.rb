module Exercise
  module Arrays
    class << self
      def get_max_value(array)
        return nil if array.empty?

        max_value = array.first
        array.each do |elem|
          max_value = elem if max_value < elem
        end
        max_value
      end

      def replace(array)
        max_value = get_max_value(array)
        array.map { |elem| elem.positive? ? max_value : elem }
      end

      def search(_array, _query)
        0
      end
    end
  end
end
