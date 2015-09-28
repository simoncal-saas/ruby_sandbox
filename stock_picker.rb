# Given: at least 2 days of stock record
# Assumption: only 1 trade of max profit

def stock_picker(ary)
  trade = ary.combination(2).to_a.reject {|x, y| x >= y}.max_by {|x, y| y-x}
  trade.nil? ? "no trade" : trade.map {|p| ary.index(p)}
end

# stock_picker([17,3,6,9,15,8,6,1,10]) => [1, 4]
# stock_picker([17,3]) => "no trade"



