puts "How many employees will be processed in this survey?"
employee_number = gets.chomp.to_i

def get_garlic_preference
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  @garlic_preference = gets.chomp
  until @garlic_preference == "y" || @garlic_preference == "n"
    puts "I didn't understand the question. What?"
    @garlic_preference = gets.chomp
  end
  if @garlic_preference == "y"
      @garlic_preference = true
  elsif @garlic == "n"
      @garlic_preference = false
  end
end

def get_health_preference
  puts "Would you like to enroll in the company's health insurance? (y/n)"
  @health_preference = gets.chomp
  until @health_preference == "y" || @health_preference == "n"
    puts "I didn't understand the question. What?"
    @health_preference = gets.chomp
  end

  if @health_preference == "y"
    @health_preference = true
  elsif @health_preference == "n"
    @health_preference = false
  end
end

def get_allergies
  @allergy_prompt =  "List your allergies one by one, hitting enter after each description. Type 'done' when you are finished."
  puts @allergy_prompt
  @allergies = gets.chomp
  until @allergies == "sunshine" || @allergies == "done"
    puts @allergy_prompt
    @allergies = gets.chomp
  end
end

def get_age
  puts "How old are you?"
  @age = gets.chomp
  while @age.to_i == 0
    puts "Invalid number. Type your age again."
    @age = gets.chomp
  end
end

def get_year
  puts "What year were you born?"
  @birth_year = gets.chomp
  while @birth_year.to_i == 0
    puts "Invalid number. Type your age again."
    @birth_year = gets.chomp
  end
end

def get_user_info
  puts "What is your name?"
  @name = gets.chomp
  get_age
  get_year
  @age = @age.to_i
  @birth_year = @birth_year.to_i
  @real_age = 2017 - @birth_year
  get_garlic_preference
  get_health_preference
end

def vampire_survey
  get_user_info
  get_allergies
  if @allergies == "sunshine"
    puts "Probably a vampire."
  elsif @allergies =="done"
    if @garlic_preference == "y"
        true
    elsif @garlic_preference == "n"
        false
    else
        puts "I didn't understand. Type y or n."
    end

    if @health_preference == "y"
      true
    elsif @health_preference == "n"
      false
    else
      puts "I didn't understand. Type y or n."
    end

    if @age == @real_age && (@garlic_preference|| @health_preference)
      puts "Probably not a vampire."

    elsif @age != @real_age && (@garlic_preference == false || @health_preference == false)
      puts "Probably a vampire"

    elsif @age != @real_age && (@garlic_preference == false && @health_preference == false)
        puts "Almost certainly a vampire"

    elsif @name == "Drake Cula" || @name == "Tu Fang"
      puts "Definitely a vampire."

    else
        puts "Results inconclusive"
    end

    /# other part of this statement #/

  else
      get_allergies
  end
end


employee_number.times do vampire_survey end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


