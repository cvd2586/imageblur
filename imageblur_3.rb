data = [                         # [row_index, col_index]
  ["0", "0", "0", "0", "0", "0"], # [0,0]......[0,5]
  ["0", "0", "0", "0", "0", "0"],
  ["0", "0", "0", "0", "0", "0"],
  ["0", "0", "0", "0", "0", "0"] #  [3,0]......[3,5]
]
# distance = (targetRowIndex - sourceRowIndex) + (targetColIndex - sourceColIndex)
# c3 - [2,2] make neighbors from 0 -> 1
data.each_with_index do |row, row_index|
  row.each_with_index do |cell, col_index|
    # puts "#{cell} - [#{row_index},#{col_index}]"
    distance = (row_index - 2).abs() + (col_index - 2).abs()
    if distance <= 1
      data[row_index][col_index] = "1"
      # puts "distance from c3 to #{cell} = #{distance}"
    end
  end
end
for value in data
  puts value.join(",")
end