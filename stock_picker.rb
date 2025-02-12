def stock_picker(prices) 
  value_per_days = []
  prices.each_with_index do |price,first_day|
    final_day = first_day + 1
    while final_day <= prices.length - 1 
      value_per_days.push([prices[final_day] - price, [first_day, final_day]])
      final_day += 1
    end
  end
  value_per_days.sort! {|a,b| b[0] - a[0]}
  if value_per_days[0][0] <= 0
    return []
  end
  value_per_days[0][1]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
