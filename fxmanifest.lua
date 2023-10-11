fx_version "cerulean"
game "gta5"

shared_script "@vrp/lib/Utils.lua"

client_scripts {
	"src/client/**.lua"
}

server_scripts {
	"src/server/**.lua",
}