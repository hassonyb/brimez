
do

function run(msg, matches)
       if not is_momod(msg) then
        return "For owner only!"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "ضع رابط اولا من خلال الامر ______ضع رابط"
       end
         local text = "🔀 رابط المجموعة 📢♥️  :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "📛تم ارسال رابط المجموعة📢 الى الخاص 👁‍🗨☑️"
end

return {
  patterns = {
    "^[#!/](linkme)$"
  },
  run = run
}

end

--[[
post by : @DevPointCH

للمزيد من الشروحات والملفات اشترك في قناة @DevPointCH

]]