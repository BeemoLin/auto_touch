CREATETIME="2016-06-13 16:03:45";

adaptResolution(640, 1136);
adaptOrientation(ORIENTATION_TYPE.PORTRAIT);

local function randomTap(x, y, w, h)
    local x = math.random(x, x + w)
    local y = math.random(y, y + h)
    tap(x, y)
    usleep(1000000)
end


local imagePath = "images/start.png";
local region = {0, 700, 640, 436};
local result = findImage(imagePath, 1, 0.95, nil, region};
for i, v in pairs(result) do
    local x = v[1], y = v[2];
    log(string.format("Found rect at: x:%f, y:%f", x, y));
    -- Click the found location once.
    tap(x, y);
    usleep(16000);
end

--[[
for i = 1,50 do
  randomTap(10, 620, 590, 380)
end
--]]