class Triangle
    def initialize(len1, len2, len3)
        @len1 = len1
        @len2 = len2
        @len3 = len3
    end

    def kind
        if valid_triangle?
            uniq_length_count = [@len1, @len2, @len3].uniq.length

            if(uniq_length_count == 1)
                :equilateral
            elsif (uniq_length_count == 2)
                :isosceles
            else
                :scalene
            end
        else
            raise TriangleError
        end
    end

    def valid_triangle?
        greater_than_0 = @len1 > 0 && @len2 > 0 && @len3 > 0
        
        valid_triangle_inequality = (@len1 < @len2 + @len3) && (@len2 < @len1 + @len3) && (@len3 < @len1 + @len2)

        greater_than_0 && valid_triangle_inequality
    end

    class TriangleError < StandardError
    end
end





