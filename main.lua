function love.load()
  blocks = {
    blue = love.graphics.newImage("img/block_blue.png"),
    red = love.graphics.newImage("img/block_red.png")
  }
  board = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,},
  }
end

function love.update(dt)
  
end

function love.draw()
  for y, row in ipairs(board) do
    for x, cell in ipairs(row) do
      if cell ~= 0 then
        local cellSize = 30
        love.graphics.draw(
        blocks.red,
        (x - 1) * cellSize,
        (y - 1) * cellSize,
        0,
        1,
        1
      )
    end
  end
end
end
