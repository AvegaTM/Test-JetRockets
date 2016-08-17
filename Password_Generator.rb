class Password_Generator
           
      def initialize
          file_array = File.new("dict.txt", "r").to_a
          @password = file_array[rand(file_array.length)][/^\w+/] 
      end
      
      def get_password
          @password
      end

      def print_password
          puts "\nПароль равен: "+@password+"\n"
      end
end
