fx_version "adamant"
game "gta5"

name "rp-radio"
description "An in-game radio which makes use of the pma-voice radio API for FiveM"
author "Frazzle (frazzle9999@gmail.com) - Littledog"
version "2.2.1"

ui_page "index.html"

dependencies {
	"pma-voice",
}

files {
	"index.html",
	"on.ogg",
	"off.ogg",
}

shared_scripts {
    -- ESX FRAMEWORK REPLACE FOR DEPRECATED METHOD "esx:getSharedObject"
    "@es_extended/imports.lua"
}

client_scripts {
	"config.lua",
	"client.lua",
}

server_scripts {
	"server.lua",
}