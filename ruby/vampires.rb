puts "How many employees will be processed in this survey?"
employee_number = gets.chomp.to_i




def vampire_survey

  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  real_age = 2017 - birth_year
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_preference = gets.chomp
    if
      garlic_preference == "y"
        true
      elsif garlic_preference == "n"
        false
      else puts "I didn't understand. Type y or n."
    end

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  health_preference = gets.chomp

    if health_preference == "y"
        true
      elsif health_preference == "n"
        false
      else puts "I didn't understand. Type y or n."
    end

    if age == real_age && (garlic_preference == true || health_preference == true )
    puts "Probably not a vampire."

      elsif age != real_age && (garlic_preference == false || health_preference == false)
      puts "Probably a vampire"

      elsif age != real_age && (garlic_preference == false && health_preference == false)
        puts "Almost certainly a vampire"

      elsif name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire."

      else
        puts "Results inconclusive"
    end

end

employee_number.times do vampire_survey end
