function init()
  self.timer = 1
  self.mintick = 1
  self.crafting = false
  self.output = {}
end

function scanSamples(...)
  local stat = "none"
  local samples = {world.containerItemAt(entity.id(), 0)}
  if samples ~= nil and #samples > 0 then
    for i,sample in ipairs(samples) do
      local recipes = root.recipesForItem(sample.name)
      if recipes ~= nil and #recpies > 0 then
        for i,recipe in ipairs(recipes) do
          if stat == "succeed" then
            break
          elseif recipe ~= nil and #recipe.input == 1 and recipe.input[1].name == "money" then
            stat = "skip"
          else
            stat = "none"
          end


          if recipe ~= nil and #recipe.input > 0 and stat ~= "skip" then
            local table_available = {}
            local table_missing = {}
            ::redo::
