function sleep(n)
  os.execute("sleep " .. tonumber(n))
end
local function pre_process(msg)
  local bot = tdcli
  local function send_game_MathBattle(msg)
    bot.sendMessage(msg.chat_id_, msg.id_, 1,"`i,m sending game` *MathBattle* `in 3 sec please play game with friends` :D" , 1, 'md')
    sleep(3)
    bot.sendGame(msg.chat_id_, 0, 0, 1, nil, 166035794, 'MathBattle')
  end
  local function send_game_Corsairs(msg)
    bot.sendMessage(msg.chat_id_, msg.id_, 1,"`i,m sending game` *Corsairs* `in 3 sec please play game with friends` :D" , 1, 'md')
    sleep(3)
    bot.sendGame(msg.chat_id_, 0, 0, 1, nil, 166035794, 'Corsairs')
  end
  local function send_game_LumberJack(msg)
    bot.sendMessage(msg.chat_id_, msg.id_, 1,"`i,m sending game` *LumberJack* `in 3 sec please play game with friends` :D" , 1, 'md')
    sleep(3)
    bot.sendGame(msg.chat_id_, 0, 0, 1, nil, 166035794, 'LumberJack')
  end
  local function send_game_Space_Orbit(msg)
    bot.sendMessage(msg.chat_id_, msg.id_, 1,"`i,m sending game` *Space Orbit* `in 3 sec please play game with friends` :D" , 1, 'md')
    sleep(3)
    bot.sendGame(msg.chat_id_, 0, true, true, nil, 280713127, 'Space Orbit')
  end
end
local function run(msg, matches)
  if matches[1] == "game 1" and is_mod(msg) then
    send_game_MathBattle(msg)
  end
  if matches[1] == "game 2" and is_mod(msg) then
    send_game_Corsairs(msg)
  end
  if matches[1] == "game 3" and is_mod(msg) then
    send_game_LumberJack(msg)
  end
  if matches[1] == "game 4" and is_mod(msg) then
    send_game_Space_Orbit(msg)
  end
end
return {
  patterns = {
    "^[!/#](game 1)$",
    "^[!/#](game 2)$",
    "^[!/#](game 3)$",
    "^[!/#](game 4)$",
  },
  run = run ,pre_process = pre_process
}