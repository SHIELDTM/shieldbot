local function run(msg, matches)
  if matches[1] == "send" and is_sudo(msg) then
    local file = matches[3]
    local fulder = matches[2]
      local receiver = get_receiver(msg)
      send_document(receiver, "./fulder/"..file..".lua", ok_cb, false)
    end
end

return {
  patterns = {
  "^(send) (.*)/(.*)$"
  },
  run = run
}
end
