do

local function run(msg, macthes)
local reply_id = msg[ 'id' ]
if is_momod(msg) and macthes[1] ==  'b1'  then
    local text = [[
    ☙   βƦιЄʍεz ßØƚ   ☙ 
    
🔰 ADMINISTRATION ORDERS 🔰
➟➟➟➟➟➟➟➟➟➟➟➟➟
ALL ORDERS IT WORK [/#!]
➟➟➟➟➟➟➟➟➟➟➟➟➟
☙ owner :: show woner
☙ who :: list member
☙ admins :: list admins
☙ promote :: put admin
☙ demote :: down admin
☙ setname :: put name
☙ setphoto :: put photo
☙ setrules :: put rules
☙ setabout :: put about
☙ setusername :: put @ G
☙ setlink :: put link
☙ newlink :: put link new
☙ link :: show link
☙ linkme :: send link me
☙ setflood :: (5-20)
☙ clean :: delet msg
☙ kick :: expulsion member
☙ banall:: general ban
☙ ban :: ban AND expulsion
☙ unbanall :: cancle general
☙ unban :: cancle ban
☙ silent :: conceal user
☙ ban list :: show them ban
☙ banall list :: show genenral
☙ silent list :: show them silt,
☙ gbanlist :: show general ban
☙ kickme :: expulsion your
☙ settings :: show setting

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
	"^[/!#]([Ll][Ii][Ss][Tt]1)$",
	"[!/]([Bb]1)$"
	},
	run = run,
}
end 