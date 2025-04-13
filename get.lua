local internet = require("internet")

local files = {
  "background.lua",
  "colors.lua",
  "controller.lua",
  "draw.lua",
  "main.lua",
  "slotanimation.lua",
  "easing.lua",
  "reel.lua",
  "result.lua",
  "update_balance.lua",
  "withdraw.lua"
}

local base = "https://raw.githubusercontent.com/alexhrcn/test2/main/"

for _, f in ipairs(files) do
  local h = internet.request(base .. f)
  local o = io.open(f, "w")
  for c in h do o:write(c) end
  o:close()
  print("✓ " .. f)
end

print("✅ Готово. Запускаю main.lua...")
os.execute("main.lua")
