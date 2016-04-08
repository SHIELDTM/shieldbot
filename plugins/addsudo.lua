do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 80182995
if matches[1] == "addsudo" or matches[1] == "addadmin" then
user = 'user#id'..80182995
end
if is_momod(msg) then
if msg.to.type == 'channel' then
local channel = 'channel#id'..msg.to.id
chat_add_user(channel, user, callback, false)
return "درحال دعوت صاحب ربات برای حل مشکل شما..."
end
elseif not is_momod(msg) then
return 'شما دسترسی برای دعوت صاحب ربات را ندارید'
end
end
return {
description = "insudo",
usage = {
"!invite name [user_name]",
"!invite id [user_id]" },
patterns = {
"^[!/#](addsudo)$"
"^[!/#](addadmin)$"
},
run = run
}
end
