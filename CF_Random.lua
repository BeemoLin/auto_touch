CREATETIME="2016-06-13 16:03:45";

adaptResolution(640, 1136);
adaptOrientation(ORIENTATION_TYPE.PORTRAIT);

local function randomTap(x, y, w, h)
    local x = math.random(x, x + w)
    local y = math.random(y, y + h)
    tap(x, y)
    usleep(1000000)
end

---[[
for i = 1,50 do
  randomTap(10, 620, 590, 380)
end
--]]