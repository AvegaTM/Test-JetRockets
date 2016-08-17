class Say_Password
    
  def initialize(passwd)
      @password = passwd
  end
  
  def say_password
      voices_directory = 'sound/'
      type_of_file = '.mp3'
      play_list = ''
      result = Readline.readline("Озвучить парол? [Y/N]", true)
      if result == "Y"
        @password.scan(/\w/).each{ |char|
          play_list += " "+voices_directory+char+type_of_file }
        pid = fork{ exec "mplayer #{play_list}" }
      end
  end
end
