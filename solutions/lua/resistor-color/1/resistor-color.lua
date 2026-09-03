return {
  color_code = function(color)
    local colors = {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}
    for i, value in pairs(colors) do
      if value == color then
        return i-1
      end
    end
  end,
  colors = function()
    return {'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'}
  end
}
