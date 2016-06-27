data={}
data.game={}
data.raw={}
util={}
util.table={}



function data:extend(i)
table.insert(data.game,i)
end

function util.table.deepcopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

require "api.data.entitydata"
require "api.data.itemdata"
require "data"

function printdata()
apiprint("Loading Objects.")
for k,v in pairs(data.game) do
  for i,j in pairs(v) do
    for k,v in pairs (j) do
      if k=="name" then
      apiprint("Loaded "..v)
      end
    end
  end
end
end