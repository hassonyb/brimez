do

function omar(msg, matches)
        local text = "( "..msg.to.title.." )🛢🔗"
        local inf = "👥GP LINK: "
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "🛡NAME : "..msg.from.first_name.."\n"
.."🛡USER : @"..(msg.from.username or "NO ❌").."\n"
.."🛡ID : "..msg.from.id.."\n"
.."🛡PHONE : "..(msg.from.phone or "NO ❌").."\n"
.."🛡GP NAME : "..msg.to.title.."\n"
.."🛡GP ID : "..msg.to.id.."\n"
       end
return "🛡NAME : "..msg.from.first_name.."\n"
.."🛡USER : @"..(msg.from.username or "NO ❌").."\n"
.."🛡ID : "..msg.from.id.."\n"
.."🛡PHONE : "..(msg.from.phone or "NO ❌").."\n"
.."🛡GP NAME : "..msg.to.title.."\n"
.."🛡GP ID : "..msg.to.id.."\n"
..inf..""..('<a href="'..group_link..'">'..text..'</a>' or "NO LINK 🍃").."\n"
end
return {
patterns = {
"^[!/#](info)$"

},
run = omar
}

end