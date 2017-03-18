do 

function run(msg, matches) 
  return [[ 
    Orders member
➟➟➟➟➟➟➟➟➟➟➟➟➟
ALL ORDERS IT WORK [/#!]
➟➟➟➟➟➟➟➟➟➟➟➟➟
☙ id:: show id

☙ info :: show info.about you

☙ calc :: To calcu.the values

☙  write:: Name decoration

☙  mymsg :: The num.of msgs

☙  kickme :: Leave Group

☙  tr :: Word translation

@BrimezTeam
]]
end 

return { 
description = "Help list", 
usage = "Help list", 
patterns = { 
	"^[/!#]([Ll][Ii][Ss][Tt]3)$",
	"[!/]([Bb]3)$" 
}, 
run = run 
} 
end