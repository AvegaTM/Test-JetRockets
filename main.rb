#!/usr/bin/ruby

require "readline"

arr_gl = ['a', 'e', 'i', 'o', 'u', 'y']
arr_sg = ('a'...'z').to_a - arr_gl
hello = "Введите число символов в пароле > "
pass = ''
pass_lng = Readline.readline(hello, true).to_i

if pass_lng < 1
  puts "Длинна должна быть положительным числом больше 0."
else
  (1..pass_lng).each{ |i|
      pass += (i%2)<1 ? arr_gl[rand(arr_gl.length)] : arr_sg[rand(arr_sg.length)] }
end

puts pass
