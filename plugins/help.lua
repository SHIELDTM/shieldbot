do

function run(msg, matches)

local mods = [[ 
راهنمای مدیر 

!gpinfo
نمایش اطلاعات اصلی گروه

!admins
نمایش لیست ادمین های گروه

!owner
نمایش خریدار گروه

!modlist
نمایش لیست ناظم ها

!bots
لیست روبات های گروه

!who
لیست اعضای گروه در یک فایل متنی

!block
بلاک کردن و کیک کردن فرد

!kick
کیک کردن فرد

!id
نمایش ایدی گروه
*For userID's: !id @username or reply !id*

!id from
نمایش اطلاعات فردی که پیغام رو فوارد کرده

!kickme
کیک شدن از سوپر گروه

!setname
گذاشتن اسم گروه

!setphoto
گذاشتن عکس برای گروه

!setrules
گذاشتن قوانین برای گروه

!setabout
گذاشتن متن درباره برای سوپر گروه(این متن در بخش توضیحات گروه هم نمایش داده میشه)

!save [value] <text>
ذخیره کردن یک متن

!get [value]
گرفتن متن

!newlink
ساختن لینک جدید

!link
گرفتن لینک

!rules
نمایش قوانین

!lock [links|flood|spam|Arabic|member|english|sticker|contacts|strict|tgservice]
قفل کردن لینک گروها-اسپم-متن و اسم های بزرگ -زبان فارسی-تعداد اعضا-کاراکتر های غیر عادی-استیکر-مخاطبین

!unlock [links|flood|spam|Arabic|member|english|sticker|contacts|strict|tgservice]
باز کردن قفل امکانات بالا

!mute [all|audio|gifs|photo|video]
پاک کردن سریع همه پیغام ها-عکس ها-گیف ها-صدا های ضبط شده-فیلم

!unmute [all|audio|gifs|photo|video]
باز کردن قفل امکانات بالا

!setflood [value]
گذاشتن value به عنوان حساسیت اسپم

!settings
نمایش تنظیمات گروه

!muteslist
نمایش نوع پیغام های سایلنت شده
*A "muted" message type is auto-deleted if posted

!silent [reply|username|id]
سایلنت کردن شخصی

!unsilent [reply|username|id]
در اوردن از سایلنت

!silentlist
نمایش لیست افراد سایلنت شده

!addword
اضافه کردن کلمه فیلتر

!remword
حذف کلمه فیلتر

!badwords
لیست کلمات فیلتر

!voice (کلمه)
تبدیل نوشتن به صدا

!sticker (کلمه)
تبدیل کلمه به استیکر

!me
فهمیدن مقام خود

!public [yes|no]
نمایش گروه شما در لیست گروها

!res [username]
گرفتن اطلاعت یوزر نیم داده شد

!log
برگرداندن تاریخچه گروه در یک فایل متنی
 ]]

 
 local admin = [[
راهنمای ادمین

!creategroup [name]
ساختن گروه

!setname
گذاشتن اسم گروه

!setname
گذاشتن اسم برای گروه

!setrules
گذاشتن قوانین برای گروه

!setabout
گذاشتن متن درباره برای سوپر گروه(این متن در بخش توضیحات گروه هم نمایش داده میشه)

!lock [flood|arabic|member|photo|name|leave|bot]
قفل کردن امکانات بالا

!unlock [flood|arabic|member|photo|name|leave|bot]
باز کردن قفل امکانات بالا

!wholist
لیست اعضا به صورت لیست

!who
لیست اعضا بصورت فایل

!type
دیدن مدل گپ

!kill chat [grupo_id]
حذف کردن گروه

!list groups
لیست گروه های ساخته شده بصورت فایل

!list realms
لیست ریلم های ساخته شده بصورت فایل

!log
گرفتن لاگ فایل گروه

!broadcast [text]
فرستادن پیام به کل گروه های ساخته شده
!broadcast Hello !
مانند

!bc [group_id] [text]
پیام فرستادن به یک گروه از طریق ایدی
!bc 123456789 Hello !
مثال
-----------
و همچنین انجام همه کار دستورات بجز سودو
 ]]
 
 local owner = [[
 راهنمای مدیر کل
!gpinfo
نمایش اطلاعات اصلی گروه

!admins
نمایش لیست ادمین های گروه

!owner
نمایش خریدار گروه

!modlist
نمایش لیست ناظم ها

!bots
لیست روبات های گروه

!who
لیست اعضای گروه در یک فایل متنی

!block
بلاک کردن و کیک کردن فرد

!id
نمایش ایدی گروه
*For userID's: !id @username or reply !id*

!id from
نمایش اطلاعات فردی که پیغام رو فوارد کرده

!kickme
کیک شدن از سوپر گروه

!setowner
ست کردن کاربر به عنوان خریدار گروه

!promote [username|id]
اضافه کردن کاربر به لیست ناظم ها

!demote [username|id]
پاک کردن کاربر از لیست ناظم ها

!setname
گذاشتن اسم گروه

!setphoto
گذاشتن عکس برای گروه

!setrules
گذاشتن قوانین برای گروه

!setabout
گذاشتن متن درباره برای سوپر گروه(این متن در بخش توضیحات گروه هم نمایش داده میشه)

!save [value] <text>
ذخیره کردن یک متن

!get [value]
گرفتن متن

!newlink
ساختن لینک جدید

!link
گرفتن لینک

!rules
نمایش قوانین

!lock [links|flood|spam|Arabic|member|english|sticker|contacts|strict|tgservice]
قفل کردن لینک گروها-اسپم-متن و اسم های بزرگ -زبان فارسی-تعداد اعضا-کاراکتر های غیر عادی-استیکر-مخاطبین

!unlock [links|flood|spam|Arabic|member|english|sticker|contacts|strict|tgservice]
باز کردن قفل امکانات بالا

!mute [all|audio|gifs|photo|video]
پاک کردن سریع همه پیغام ها-عکس ها-گیف ها-صدا های ضبط شده-فیلم

!unmute [all|audio|gifs|photo|video]
باز کردن قفل امکانات بالا

!setflood [value]
گذاشتن value به عنوان حساسیت اسپم

!settings
نمایش تنظیمات گروه

!muteslist
نمایش نوع پیغام های سایلنت شده
*A "muted" message type is auto-deleted if posted

!silent [username]
سایلنت کردن یک کاربر خاص در گروه

!unsilent [reply|username|id]
در اوردن از سایلنت

!silentlist
نمایش لیست افراد سایلنت شده

!addword
اضافه کردن کلمه فیلتر

!remword
حذف کلمه فیلتر

!badwords
لیست کلمات فیلتر

!voice (کلمه)
تبدیل نوشتن به صدا

!sticker (کلمه)
تبدیل کلمه به استیکر

!me
فهمیدن مقام خود

!clean [rules|about|modlist|silentlist]
پاک کردن لیست ناظم ها-درباره-لیست سایلنت شده ها-قوانین

!public [yes|no]
نمایش گروه شما در لیست گروها

!res [username]
گرفتن اطلاعت یوزر نیم داده شد

!log
برگرداندن تاریخچه گروه در یک فایل متنی

!setadmin
ادمین کردن در گروه

!demoteadmin
در اوردن از ادمینی
 ]]
 
 local member = [[
 راهنمای ممبر

!admins
نمایش لیست ادمین های گروه

!owner
نمایش خریدار گروه

!modlist
نمایش لیست ناظم ها

!id
نمایش ایدی گروه
*For userID's: !id @username or reply !id*

!id from
نمایش اطلاعات فردی که پیغام رو فوارد کرده

!kickme
کیک شدن از سوپر گروه

!rules
نمایش قوانین

!badwords
لیست کلمات فیلتر

!voice (کلمه)
تبدیل نوشتن به صدا

!sticker (کلمه)
تبدیل کلمه به استیکر

!me
فهمیدن مقام خود

!insta 
اطلاعات اینستا

!azan
فهمیدن اذان
 ]]
 
 local sudo = [[
 مثلا سودویی همه کارا می تونی 
 ]]
 
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin1(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^[!/#]([Hh]elp)$",
    
	"^[!/#]([Hh]elp) (mod)$",
	"^[!/#]([Hh]elp) (owner)$",
	"^[!/#]([Hh]elp) (member)$",
  }, 
  run = run 
}

end


