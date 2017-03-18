local function kireto(msg,matches)
local kyear = tonumber(os.date("%Y"))
local kmonth = tonumber(os.date("%m"))
local kday = tonumber(os.date("%d"))
local dyear = matches[1]
local dmonth = matches[2]
local dday = matches[3]
--
local agee = kyear - dyear
local ageee = kmonth - dmonth
local ageeee = kday - dday
--
local kireto1 = agee * 360 + ageee * 30 + ageeee
local kireto2 = kireto1 / 7
local kireto3 = kireto1 / 30
local kireto4 = kireto1 / 360
local kireto5 = kireto1 * 24
local kireto6 = kireto5 * 60
local lMAECOl = kireto6 * 60
local DHURGHAM = " 👮🏼 مرحبا عزيزي 👮🏼 "..msg.from.first_name.."\n 👮🏼 لقد قمت بحسب عمرك👇🏻  \n  "..agee.." سنة 📆  \n "..ageee.." شهر 📆  \n"..ageeee.." يوم 📆  \n \n ⚪️➖ لقد عشت لمدة "..kireto1.." من الايام  \n ⚫️➖ لقد عشت لمدة "..kireto2.." من الاسابيع  \n ⚪️➖ لقد عشت لمدة "..kireto3.." من الاشهر  \n ⚫️➖ لقد عشت لمدة "..kireto4.." من السنين ".."\n ⚪️➖ لقد عشت لمدة "..kireto5.." من الساعات \n ⚫️➖ لقد عشت لمدة "..kireto6.." من الدقائق \n ⚪️➖ لقد عشت لمدة "..lMAECOl.."\n من الثواني "
return DHURGHAM
end
return {
    patterns = {
        "^myage (.+)/(.+)/(.+)"
    },
    run = kireto
}
--[[by : @kireto
channel : @lSUBZEROl
dev : @lMAECOl
]]