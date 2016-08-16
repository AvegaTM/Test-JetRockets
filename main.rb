require "readline"

/***
  * say( filelist ) - вызывает внешнюю программу
  * @filelist :string - список проигрываемых файлов через пробел
  */
def say( filelist )
  temp = fork{ exec "mplayer #{filelist}" }
end

dir = 'sound/'
list = ''
hello = "Данная скрипт расчитан под оперционную систему Linux.\n\
Для его работы необходима программа mplayer.\n\
Введите длину пароля цифрами > "
lng = Readline.readline( hello, true ).to_i
ar = ( lng < 9 ) ? (0..9).to_a : (0..9).to_a+('a'..'z').to_a

if (lng == 0) then
  puts "Длина не задана." 
else
  (1..lng).each do
    list += dir + ar[rand(ar.length)].to_s + ".mp3 "
  end
  say list
end