do
local function pre_process(msg) 
local r = get_receiver(msg) 
local link = 'link:'..msg.to.id
local fwd = 'fwd:'..msg.to.id
local chat = 'chat:'..msg.to.id
local photo = 'photo:'..msg.to.id
local audio =  'audio:'..msg.to.id
local inline = 'inline:'..msg.to.id
local link2 = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]")
if redis:get(link) and not is_momod(msg) and link2 then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
delete_msg(msg.id, ok_cb, true)
elseif redis:get(chat) and not is_momod(msg) and msg.to.type == 'channel' then
delete_msg(msg.id, ok_cb, true)
elseif redis:get(photo) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then
delete_msg(msg.id, ok_cb, true)
elseif redis:get(photo) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then
delete_msg(msg.id, ok_cb, true)
elseif redis:get(inline) and not is_momod(msg) and msg.text == '[unsupported]' then
delete_msg(msg.id, ok_cb, true)
return "done"
       end
   return msg
 end
 
 
local function debye(msg, matches) 
    local debye = msg['id'] 
    chat_id =  msg.to.id 
if is_momod(msg) and matches[1]== 'k' and matches[2]== 'links' then
    local link = 'link:'..msg.to.id 
    redis:set(link, true)
    
 elseif is_momod(msg) and matches[1]== 'n' and matches[2]== 'links' then
    local link = 'link:'..msg.to.id 
    redis:del(link)
end

if is_momod(msg) and matches[1]== 'k' and matches[2]== 'fwd' then
    local fwd = 'fwd:'..msg.to.id 
    redis:set(fwd, true)
    
 elseif is_momod(msg) and matches[1]== 'n' and matches[2]== 'fwd' then
    local fwd = 'fwd:'..msg.to.id 
    redis:del(fwd)
end

if is_momod(msg) and matches[1]== 'k' and matches[2]== 'all'then
    local chat = 'chat:'..msg.to.id 
    redis:set(chat, true)
    
 elseif is_momod(msg) and matches[1]== 'n' and matches[2]== 'all' then
    local chat = 'chat:'..msg.to.id 
    redis:del(chat)
end
if is_momod(msg) and matches[1]== 'p' and matches[2]== 'photo' then
    local photo = 'photo:'..msg.to.id 
    redis:set(photo, true)
    
 elseif is_momod(msg) and matches[1]== 'd' and matches[2]== 'photo' then
    local photo = 'photo:'..msg.to.id 
    redis:del(photo)
end
if is_momod(msg) and matches[1]== 'p' and matches[2]== 'audio' then
    local audio = 'audio:'..msg.to.id 
    redis:set(audio, true)
    
 elseif is_momod(msg) and matches[1]== 'd' and matches[2]== 'audio' then
    local audio = 'audio:'..msg.to.id 
    redis:del(audio)
end
if is_momod(msg) and matches[1]== 'k' and matches[2]== 'inline' then
    local inline = 'inline:'..msg.to.id 
    redis:set(inline, true)
    
 elseif is_momod(msg) and matches[1]== 'n' and matches[2]== 'inline' then
    local inline = 'inline:'..msg.to.id 
    redis:del(inline)
end
end
return {
    patterns = {
        '^[!/](k) (links)$',
        '^[!/](n) (links)$',
        '^[!/](k) (fwd)$',
        '^[!/](n) (fwd)$',
        '^[!/](k) (all)$',
        '^[!/](n) (all)$',
        '^[!/](p) (photo)$',
        '^[!/](d) (photo)$',
        '^[!/](p) (audio)$',
        '^[!/](d) (audio)$',
        '^[!/](k) (inline)$',
        '^[!/](n) (inline)$'
    },
    run = debye,
    pre_process = pre_process
}
end