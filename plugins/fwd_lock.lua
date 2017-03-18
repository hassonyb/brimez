-- by @kasper_dev or @hi_debye
do
local function pre_process(msg) 
local r = get_receiver(msg) 
local debye = 'debye_fwd:'..msg.to.id
local debye2 = 'debye2_fwd:'..msg.to.id
local debye3 = 'debye3_fwd:'..msg.to.id
local user = msg.from.id
local chat = msg.to.id
if redis:get(debye) and not is_momod(msg) and msg.fwd_from then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(debye2) and not is_momod(msg) and msg.fwd_from then
delete_msg(msg.id, ok_cb, true)
elseif redis:get(debye3) and not is_momod(msg) and msg.fwd_from then
delete_msg(msg.id, ok_cb, false)
 kick_user(user, chat)
       return "done"
       end
   return msg
 end
    
    
local function debye(msg, matches) 
    local debye = msg['id'] 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل' and matches[2]== 'التوجيه' then
    local debye = 'debye_fwd:'..msg.to.id 
    redis:set(debye, true)
    local text = 'تم تفعيل قفل التوجيه 🔁 بالحذف✅'
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == 'فتح' and matches[2]== 'التوجيه' then
    local debye = 'debye_fwd:'..msg.to.id 
    redis:del(debye)
    local text = 'تم تعطيل قفل التوجيه بالحذف✅'
    return reply_msg(msg.id, text, ok_cb, false)   
end
if is_momod(msg) and matches[1] == 'تحذير' and matches[2]== 'التوجيه' then
    local debye2 = 'debye2_fwd:'..msg.to.id 
    redis:set(debye2, true)
    local text = 'تم تفعيل قفل التوجيه 🔁 بالتحذير💡'
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == 'لاتحذر' and matches[2]== 'التوجيه' then
    local debye2 = 'debye2_fwd:'..msg.to.id 
    redis:del(debye2)
    local text = 'تم تعطيل قفل التوجيه 🔁 بالتحذير 💡'
    return reply_msg(msg.id, text, ok_cb, false)   
end
if is_momod(msg) and matches[1] == 'طرد' and matches[2]== 'التوجيه' then
    local debye3 = 'debye3_fwd:'..msg.to.id 
    redis:set(debye3, true)
    local text = 'تم تفعيل قفل التوجيه🔁 بالطرد🚷🛡'
    return reply_msg(msg.id, text, ok_cb, false)
    
 elseif is_momod(msg) and matches[1] == 'لاتطرد' and matches[2]== 'التوجيه' then
    local debye3 = 'debye3_fwd:'..msg.to.id 
    redis:del(debye3)
    local text = 'تم تعطيل قفل التوجيه 🔁 بالطرد🚷🛡'
    return reply_msg(msg.id, text, ok_cb, false)
end
end
return {
    patterns = {
        '^(قفل) (التوجيه)$',
        '^(فتح) (التوجيه)$',
        '^(تحذير) (التوجيه)$',
        '^(لاتحذر) (التوجيه)$',
        '^(طرد) (التوجيه)$',
        '^(لاتطرد) (التوجيه)$'
    },
    run = debye,
    pre_process = pre_process
}
end
-- by @kasper_dev or @hi_debye