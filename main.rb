require "readline"
require "./Password_Generator"
require "./Say_Password"
hello = 
  "Данная скрипт расчитан под оперционную систему Linux.\n" \
  "Для его работы необходима программа mplayer.\n"
puts hello
passwd_gen = Password_Generator.new()
passwd_gen.print_password
say = Say_Password.new(passwd_gen.get_password)
say.say_password
