fx_version "cerulean"
game "gta5"

name "rp-radio"
description "Une radio dans le jeu qui utilise l'API radio pma-voice pour FiveM"
author "Frazzle (frazzle9999@gmail.com) - Littledog / Fork and rework : Epyi"
version "2.2.1"

ui_page "ui/index.html"

files {
	"ui/index.html",
	"ui/on.ogg",
	"ui/off.ogg",
}

shared_scripts {
    "@es_extended/imports.lua"
}
client_scripts {
	"client/client.lua",
	"config.lua"
}
server_scripts {
	"server/server.lua",
}

dependencies {
	"es_extended",
	"pma-voice"
}