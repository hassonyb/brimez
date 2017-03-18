--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                                               ▀▄ ▄▀ 
▀▄ ▄▀    BY DEV KASPER                                  ▀▄ ▄▀ 
▀▄ ▄▀   BY KASPER (@kasper_dev)                     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY DEV KASPER           ▀▄ ▄▀ 
▀▄ ▄▀   orders   :    file                             ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]  
local function run(msg, matches) 
  if matches[1] == "give me" then 
    local file = matches[2] 
    if is_sudo(msg) then --sudo only ! 
      local receiver = get_receiver(msg) 
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false) 
      else 
        return nil 
    end 
  end 
end 

return { 
  patterns = { 
  "^[#!/](give me) (.*)$" 
  }, 
  run = run 
}