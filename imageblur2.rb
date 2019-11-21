class Image

    def initialize(array)
        @image = array
     end

    def output_image
        @image.each do |row|
          puts row.join
        end
    end

    def blur_image
        blur_image = []
        @image.each_with_index do |row, row_index|
            row.each_with_index do |cell, col_index|
                blur_image << [row_index, col_index] if cell == 1
            end
        end

        blur_image.each do |coord|
            if (coord.first - 1).between?(0,(@image.size - 1))
                @image[coord.first - 1][coord.last] = 1
            end
            if (coord.last + 1).between?(0,((@image[0]).size - 1))
                @image[coord.first][coord.last + 1] = 1
            end
            if (coord.first + 1).between?(0,(@image.size - 1))
                @image[coord.first + 1][coord.last] = 1
            end
            if (coord.last - 1).between?(0,((@image[0]).size - 1))
                @image[coord.first][coord.last - 1] = 1
            end
        end
    end
end

image = Image.new ([
  [0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0],
  [0, 0, 0, 1, 0],
  [0, 0, 1, 0, 0],
])

image.output_image
puts "---"
image.blur_image
image.output_image
