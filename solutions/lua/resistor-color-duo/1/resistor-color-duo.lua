return {
  value = function(colors)
    local bands = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}
    local rating = ""
    for _, passedin in pairs(colors) do
      for i, value in pairs(bands) do
        if value == passedin then
          rating = rating .. string.format(i-1)
        end
      end
    end
    return tonumber(string.sub(rating, 1, 2))
  end
}
