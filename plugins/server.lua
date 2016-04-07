do
    
function run(msg, matches)
  if matches[1] == "reboot" and is_sudo(msg) then
        local s = io.popen("sh ./data/upstart.sh") 
        return ( s:read("*a") ) 
  elseif matches[1]:lower() == "serverinfo" and is_sudo(msg) then
     local f = io.popen("sh ./data/com/cmd.sh") 
     return ( f:read("*a") ) 
  end
end
return {
  patterns = {
   -- "^(reboot)",
    "^([Ss][Ee][Rr][Vv][Ee][Rr][Ii][Nn][Ff][Oo])"
    "^[!/#]([Ss][Ee][Rr][Vv][Ee][Rr][Ii][Nn][Ff][Oo])"
  },
  run = run
}
end
