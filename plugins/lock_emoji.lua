--[[ 
$ :) 
-- - ( #MASCO_ماسكو ) - -- 
$ :) 
-- - ( @IQ_ABS ) - -- 
$ :) 
--Channel-( @DEV_PROX )-- 
$ :) 
]]-- 
local function run(msg) 
    local data = load_data(_config.moderation.data) 
if not is_momod(msg) then 
 delete_msg(msg.id, ok_cb, true) 
end 
end 
end 

return {patterns = { 
"😞(.+)", 
 "😞", 
 "😐(.+)", 
 "😐", 
 "🙁(.+)", 
 "🙁", 
 "🌝(.+)", 
 "🌝", 
 "🤖(.+)", 
 "🤖", 
 "😲(.+)", 
 "😲", 
 "💋(.+)", 
 "💋", 
 "🙄(.+)", 
 "🙄", 
 "🤗(.+)", 
 "🤗", 
 "😱(.+)", 
 "😱", 
 "🤐(.+)", 
 "🤐", 
 "💩(.+)", 
 "💩", 
 "🌹(.+)", 
 "🌹", 
 "🖐(.+)", 
 "🖐", 
 "❤️(.+)", 
 "❤️", 
 "💗(.+)", 
 "💗", 
 "🤔(.+)", 
 "🤔", 
 "😖(.+)", 
 "😖", 
 "☹️(.+)", 
 "☹️", 
 "😔(.+)", 
 "😔", 
 "👾(.+)", 
 "👾", 
 "🚀(.+)", 
 "🚀", 
 "🌎🌍(.+)", 
 "🌍", 
 "🍦", 
 "😸(.+)", 
 "😺", 
 "😯(.+)", 
 "😯", 
 "🤒(.+)", 
 "🤒", 
 "😷(.+)", 
 "😷", 
 "🙀(.+)", 
 "🙀", 
 "🎪(.+)", 
 "🌚", 
 "🌚(.+)", 
 "😂", 
 "😂(.+)", 
 "😳", 
 "😳(.+)", 
 "😛", 
 "😛(.+)", 
 "😢", 
 "😢(.+)", 
 "😓", 
 "😓(.+)", 
 "😾", 
 "😾(.+)", 
 "👊🏻", 
 "👊🏻(.+)", 
 "✊🏻", 
 "✊🏻(.+)", 
 "👿", 
 "👿(.+)", 
 "👅", 
 "👅(.+)", 
 "🖕🏿", 
 "🖕🏿(.+)", 
 "😲", 
 "😲(.+)", 
 "👹", 
 "👹(.+)", 
 "😴", 
 "😴(.+)", 
 "☂", 
 "☂(.+)", 
 "🗣", 
 "🗣(.+)", 
 "⛄️", 
 "⛄️(.+)", 
 "😻", 
 "😻(.+)", 
"😀(.+)", 
 "😀", 
 "😬(.+)", 
 "😬", 
 "😁(.+)", 
 "😁", 
 "😂(.+)", 
 "😂", 
 "😃(.+)", 
 "😃", 
 "😄(.+)", 
 "😄", 
 "😅", 
 "😆(.+)", 
 "😆", 
 "😇(.+)", 
 "😇", 
 "😉(.+)", 
 "😉", 
 "😊(.+)", 
 "😊", 
 "🙂(.+)", 
 "🙂", 
 "🙃(.+)", 
 "🙃", 
 "☺️(.+)", 
 "☺️", 
 "😋(.+)", 
 "😋", 
 "😌", 
 "😍(.+)", 
 "😍", 
 "😘(.+)", 
 "😘", 
 "😗(.+)", 
 "😗", 
 "😙(.+)", 
 "😙", 
 "😚(.+)", 
 "😚", 
 "😜(.+)", 
 "😜", 
 "😝(.+)", 
 "😝", 
 "🤑(.+)", 
 "🤑", 
 "🤓(.+)", 
 "🤓", 
 "😎(.+)", 
 "😎", 
 "🤗(.+)", 
 "🤗", 
 "😏(.+)", 
 "😏", 
 "😶(.+)", 
 "😶", 
 "😺(.+)", 
 "😺", 
 "😹", 
 "😼", 
 "😿", 
 "🌝", 
 "🌚", 
 "🌶", 
 "🖐🏼", 
},run = run} 

