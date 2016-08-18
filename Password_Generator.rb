class Password_Generator
           
      def initialize(password_length)
          @password = ''
          if password_length < 1
            puts "Динна пароля должна быть положительным числом больше 0."
            return ''
          end 
          work_array = []
          file_array = File.new("dict.txt", "r").to_a
          file_array.each{ |line| work_array << line[/^\w+/]}
          @password += work_array[rand(work_array.length)] while @password.length <= password_length
          @password = @password.byteslice(1, password_length) if @password.length > password_length
      end
      
      def get_password
          @password
      end

      def print_password
          puts "\nПароль равен: "+@password+"\n"
      end
end
