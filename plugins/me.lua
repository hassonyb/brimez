do local function DevPoint(msg, matches) if is_sudo(msg) then local text = "💳-you : is sudo 🕵🔧".."\n".."🆔-ID : "..msg.from.id.."\n".."🏧- your name : "..msg.from.first_name.."\n".."🚸- username : @"..msg.from.username.."\n".."©- group name "..msg.to.title return reply_msg(msg.id, text, ok_cb, false) end if is_momod(msg) then local text = "you admin 🛳⚓️".."\n".."🆔- id : "..msg.from.id.."\n".."🏧- your name : "..msg.from.first_name.."\n".."🚸- username : @"..msg.from.username.."\n".."©- group name "..msg.to.title return reply_msg(msg.id, text, ok_cb, false) end if not is_momod(msg) then local text = "you member 😹💙".."\n".."🆔- id : "..msg.from.id.."\n".."🏧- your name : "..msg.from.first_name.."\n".."🚸- username : @"..msg.from.username.."\n".."©- group name "..msg.to.title return reply_msg(msg.id, text, ok_cb, false) end if is_owner(msg) then local text = "you owner 🤖🤘🏼".."\n".."🆔- id : "..msg.from.id.."\n".."🏧- your name : "..msg.from.first_name.."\n".."🚸- user name : @"..msg.from.username.."\n".."©- group name "..msg.to.title return reply_msg(msg.id, text, ok_cb, false) end end return { patterns = { "^[!/](me)$", }, run = DevPoint, } end


