return {
  label = function(c1, c2, c3)
    local value = ""
    local colors = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}
    for i, col in pairs(colors) do
      if col == c1 then
        value = value .. string.format(i-1)
      end
    end
    for i, col in pairs(colors) do
      if col == c2 then
        value = value .. string.format(i-1)
      end
    end
    value = tonumber(value)
    for i, col in pairs(colors) do
      if col == c3 and col ~= 'black' then
        for re = 1, (i-1) do
          value = tonumber(value * 10)
        end
      end
    end
    local metric = ""
    if value > 1000000000000 then
      metric = "teraohms"
      value = value / 1000000000000
    elseif value > 1000000000 then
      metric = "gigaohms"
      value = value / 1000000000
    elseif value > 1000000 then
      metric = "megaohms"
      value = value / 1000000
    elseif value > 1000 then
      metric = "kiloohms"
      value = value / 1000
    else
      metric = "ohms"
    end
    
    return value, metric
  end
}
