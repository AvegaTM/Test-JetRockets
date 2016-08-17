class Password_Generator
           
      def initialize(passwrd_lngth=1)
          @password = ''
          array_symbols = ('a'...'z').to_a
          arrey_numbers = (0..9).to_a
          @password_length = passwrd_lngth;
          @work_array = []
          @work_array = (@password_length<9) ? (0..9).to_a : (0..9).to_a+('a'..'z').to_a
      end
      
      def get_password
          @password
      end
      
      def generating_password
          if @password_length < 1
            puts "Длинна должна быть положительным числом больше 0."
            false 
          else
            (1..@password_length).each{
                                @password += @work_array[rand(@work_array.length)].to_s}
            @password
          end
      end
      
      def print_password
          puts "\nПароль равен: "+@password+"\n"
      end
end
