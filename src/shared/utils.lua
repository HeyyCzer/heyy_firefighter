function uuid()
    local template = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function(c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end)
end

-- get random index from table
function table.random(t)
    local keys = {}
    for key, _ in pairs(t) do
        table.insert(keys, key)
    end
    return keys[math.random(1, #keys)]
end

-- get table size
function table.size(t)
	local count = 0
	for _ in pairs(t) do count = count + 1 end
	return count
end

function _debug(...)
	if config.debug then
		print("^4[DEBUG]^0", ...)
	end
end

function _info(...)
	print("^4[INFO]^0", ...)
end

function _success(...)
	print("^2[SUCESSO]^0", ...)
end

function _warning(...)
	print("^3[AVISO]^0", ...)
end

function _error(...)
    print("^1[ERRO]^0", ...)
end
