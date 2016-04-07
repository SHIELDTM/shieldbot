do

local function run(msg, matches)
  if matches[1]:lower() == 'shield' or 'mega shield' then --change this with anything you want
    send_document(get_receiver(msg), "./data/me/shield.webp", ok_cb, false) --put here sticker location(if you want)
      return [[ 
    MeGa shield v2.8
     based on SEEDTEAM/TeleSeed
      @hafez1116hafez (developer)
       @shahe_redcross (sudo)
        @amirho3ien911 (sudo)
         and founder is @iwals but he isn't sudo
          for get support link type !support
    
    special thanks
     SEEdTEAM
      #MeGa_shield
 ]]
  end
end

return {
  patterns = {
    "^[!/#]([Ss]hield)$",
    "^([Ss]hield)$",
    "^[!/#]([Mm]ega shield)$",
    "^([Mm]ega shield)$"
    },
  run = run
}
end
