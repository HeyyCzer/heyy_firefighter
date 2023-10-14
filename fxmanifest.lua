fx_version "cerulean"
game "gta5"
lua54 "yes"

shared_script {
    "@vrp/lib/Utils.lua",
	"config/**.lua",
	"src/shared/**.lua"
}

client_scripts {
    "src/client/_common.lua",
	"src/client/controller/fire.lua",
	"src/client/controller/creator.lua",
}

server_scripts {
	"src/server/_common.lua",
	"src/server/model/fire.lua",
	"src/server/controller/fire.lua",
	"src/server/admin.lua",
}