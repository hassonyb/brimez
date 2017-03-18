do

local function run(msg, macthes)
local reply_id = msg[ 'id' ]
if is_momod(msg) and macthes[1] ==  'b2'  then
    local text = [[
                 ☙   βƦιЄʍεz ßØƚ   ☙ 
   
🛡 Orders Protection Group 🛡
➟➟➟➟➟➟➟➟➟➟➟➟➟
    [/#!] k CLOSE
    [/#!] n OPEN
➟➟➟➟➟➟➟➟➟➟➟➟➟
☙ k arabic :: close lang ar
☙ k english :: close lang eng
☙ k spam :: close spam
☙ k links :: close ads
☙ k rtl :: close  Collective
☙ k join :: close add
☙ k emoji :: close smail
☙ k tag :: close hashtag
☙ k username :: close @
☙ k reply:: close reply
☙ k flood:: close Repetition
☙ k fwd :: close foreward
☙ k bots :: close add bots   
☙ k sticker :: close sticker
☙ k badword :: close words   
☙ k member :: close members    
☙ k contacts :: close contacts
☙ k leave :: close go out
☙ k media :: close all media  
☙ k strict :: on protection    
☙ k all :: close all settings  
➟➟➟➟➟➟➟➟➟➟➟➟➟
    [/#!] p CLOSE
    [/#!] d OPEN
➟➟➟➟➟➟➟➟➟➟➟➟➟
☙ p photo :: close photo
☙ p vedio :: close vedio
☙ p audio :: close audio
☙ p doc :: close files
☙ p text :: close writting
☙ p all :: close all settings

@BrimezTeam
	]]
	reply_msg(reply_id, text, ok_cb, false)
end
	
local reply_id = msg [ 'id' ]
	if not is_momod(msg) then
local text = " only managers⛔️"
	reply_msg(reply_id, text, ok_cb, false)
end
	
end
return {
    patterns ={
	"^[/!#]([Ll][Ii][Ss][Tt]2)$",
	"[!/]([Bb]2)$"
	},
	run = run,
}
end 
