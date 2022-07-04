# "P1"

def multiple_string(str, n)
    return str*n
end
print multiple_string('a', 3),"\n"
print multiple_string('a', 5),"\n"

print "\n"

##"P2"

def problem2(str)
    if str.start_with?("if") 
        puts true
    else
        puts false
    end
end

problem2('ifcond')
problem2('info')

print "\n"

###"P3"

def problem3(str)
    puts str[-1] << str[1...-1]  << str [0]
end 

problem3('Python'),"\n"
problem3('Java'),"\n"

print "\n"


##### "P4"

def problem4(str)
    if(str.length() > 1)
            len = str.length() - 1;
            return (str.split('')[len] + str + str.split('')[len]);
        
        end 

print problem4('abc')
print problem4('abcd')
print "\n"

##### "P5"

def problem5(year)
    year = [2012, 1500, 1600, 2020]
    year.each do |y|
        
    if y % 400 == 0
  	 puts y.to_s + ' is leap year'
    elsif y % 4==0 && y % 100 != 0 
      puts y.to_s + ' is leap year'
  else  puts y.to_s + ' is not leap year'

  end
end

print "\n"


###### "P6"

def problem6(nums)
    tempNums = []
    for i in 0..nums.length-1
        tempNums[i] = nums[nums.length-(i+1)]
    end
    return tempNums
end

p problem6([1,2,5])
p problem6([1,2,3,4,5])
p problem6([1,2,4,5,2,9])

print "\n"


####### "P7"

def problem7(nums)
    sum = 0
    i = 0
    while i < nums.length
        if(nums[i] == 17)
            i += 1
        else
            sum += nums[i]
        end
        i += 1
    end
    return sum
end

print problem7( [3, 5, 1, 17] ).to_s + "\n"
print problem7( [] ).to_s + "\n"

print "\n"
