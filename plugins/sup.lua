do

function run(msg, matches)
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(1040710762)]['settings']['set_link']
       if not group_link then
      return 'لینک ست نشده'
       end
         local text = "MeGa shield Support link :\n\n"..group_link
            return text
end

return {
  patterns = {
    "^[/#!]([Ss]upport)$"
  },
  run = run
}

end
