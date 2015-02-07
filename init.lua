local userDir = "/Users/jme"

package.cpath = package.cpath .. ';' .. userDir .. '/.luarocks/lib/lua/5.2/?.so'
package.path = package.path .. ';' .. userDir .. '/.luarocks/share/lua/5.2/?.lua'

local sizeUp = require "sizeUp"

local modifier = {"cmd", "alt", "ctrl"}
sizeUp.init(modifier)