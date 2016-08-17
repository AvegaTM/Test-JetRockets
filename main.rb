#!/usr/bin/ruby

require "readline"

arr_gl_st = ['a', 'e', 'i', 'o', 'u', 'y']
arr_sg_st = ('a'...'z').to_a - arr_gl_st
arr_gl_pr = ['A', 'E', 'I', 'O', 'U', 'Y']
arr_sg_pr = ('A'...'Z').to_a - arr_gl_pr
hello = "Введите число символов в пароле > "
pass = ''
pass_lng = Readline.readline(hello, true).to_i

arr_gl = arr_gl_st + arr_gl_pr
arr_sg = arr_sg_st + arr_sg_pr


if pass_lng < 1
  puts "Длинна должна быть положительным числом больше 0."
else
  (1..pass_lng).each{ |i|
      pass += (i%2)<1 ? arr_gl[rand(arr_gl.length)] : arr_sg[rand(arr_sg.length)] }
end

puts pass
