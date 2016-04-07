do

function run(msg, matches)
  os.execute("nohup COMAND "..matches[1].." </dev/null &>/dev/null &")
  return "Added: " .. matches[1]
end

return {
  description = "comand", 
  usage = "comand [argument]",
  patterns = {
    "^!cmd (.*)$"
  }, 
  run = run,
  privileged = true 
}

end
