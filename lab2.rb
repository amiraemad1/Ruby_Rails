class User
    attr_accessor :name
    @name = 'user'
  
    def initialize(name)
      name = @name
    end
  
    def set_name=(value)
      @name = value
    end
  
    def get_name
      @name
    end
  
  end
  
print "###############################\n\n"

puts "calculator class"
class Calculator
    @@result=nil
    def initialize(num1,num2,op)
        if(num1.is_a? Integer and num2.is_a? Integer)
            case op
            when "+"
                @@result=num1+num2
            when "-"
                @@result=num1-num2
            when "*"
                @@result=num1*num2
            when "/"
                if(num2!=0)
                    @@result=num1/num2
                else
                    p "Error Div by 0"
                end
            else
                p "Error Invalid Operation"
            end
        end
    end
    def ret_result
        @@result
    end
end
print "#######################\n\n"

module Person
    require 'date'
  
    class Person
      attr_accessor :first_name, :last_name, :birth_date
      @first_name
      @last_name
      @birth_date
  
      def initialize
        @first_name = "Ruby"
        @last_name = ""
        @birth_date = ""
      end

      def get_person_data
        puts "Enter first name : "
        @first_name = gets.chomp
  
        puts "Enter last name : "
        @last_name = gets.chomp
  
        puts "Enter birth date format (YYYY-mm-dd) : "
        begin
            @birth_date = (Date.today - Date.parse(gets.chomp)).to_i
        rescue ArgumentError
            p "invalid date, exiting..."
            exit(1)
        end
        if @birth_date < 0
            p "future date not accepted, exiting..."
            exit(1)
        end
      end
  
      def print_hello
        puts "Welcome  #{first_name} #{last_name}"
        puts "age in \n years : #{@birth_date / 365}"
        puts " Months : #{@birth_date / 12}"
        puts " Days : #{@birth_date}"
      end
    end
  end
  
  person = Person::Person.new
  person.get_person_data
  person.print_hello
print "####################\n\n"