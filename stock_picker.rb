def stock_picker (arr) 
  buySell = [];
  sorted_prices = arr.sort()
  if sorted_prices[0] != arr[arr.length - 1]
    buySell.push(arr.index(sorted_prices[0]))  
  elsif sorted_prices[0] === arr[arr.length - 1]
    buySell.push(arr.index(sorted_prices[1]))
  end
  if sorted_prices[sorted_prices.length - 1] != arr[0]
    buySell.push(arr.index(sorted_prices[sorted_prices.length - 1]))
  elsif sorted_prices[sorted_prices.length - 1] === arr[0]
    buySell.push(arr.rindex(sorted_prices[sorted_prices.length - 2]))
  end  
  print buySell
end
stock_prices = [20, 2, 3, 1, 5, 20, 23, 8, 50, 8]
stock_picker(stock_prices)