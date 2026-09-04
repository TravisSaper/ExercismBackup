local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  local digits = {}
  local total = 0
  for i = 1, #string.format(number) do
    table.insert(digits, string.sub(string.format(number), i, i))
  end

  for i, value in pairs(digits) do
    total = total + tonumber(value) ^ #string.format(number)
  end
  if total == number then
    return true
  else
    return false
  end
end

return ArmstrongNumbers
