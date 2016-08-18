#!/usr/bin/ruby

require "readline"
require "./Password_Generator"
require "./Say_Password"

hello = 
  "Данная скрипт расчитан под оперционную систему Linux.\n" \
  "Для его работы необходима программа mplayer.\n" \
  "Введите длину пароля цифрами > "
passwd_lng = Readline.readline(hello, true).to_i
#passwd_lng = 11

passwd_gen = Password_Generator.new(passwd_lng)
passwd_gen.print_password

say = Say_Password.new(passwd_gen.get_password)
say.say_password
