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

      def search(array, query)
        binary_search(array, query, 0, array.length - 1)
      end

      def binary_search(array, query, start_index, end_index)
        return -1 if array.empty?

        if start_index == end_index
          return -1 if array[start_index] != query
          return start_index if array[start_index] == query
        end

        middle_index = (start_index + end_index) / 2

        if array[middle_index] >= query
          binary_search(array, query, start_index, middle_index)
        elsif array[middle_index] < query
          binary_search(array, query, middle_index + 1, end_index)
        end
      end
    end
  end
end
