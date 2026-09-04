local Darts = {}

function Darts.score(x, y)
  if incircle(x, y, 10) then
    if incircle(x, y, 5) then
      if incircle(x, y, 1) then
        return 10
      else
        return 5
      end
    else
      return 1
    end
  else
    return 0
  end
end

function incircle(x, y, cr)
  return (x ^ 2) + (y ^ 2) <= cr ^ 2
end
return Darts
