class Scene
    
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
  
end

class End < Scene
    
  @@quips = [
    "Hopefully you are happy with your midterm grade.",
    "There is still plenty of time left in the year.",
    "Your grade is by no means set in stone.",
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end


class Class_Selection < Scene

  def enter()
    puts "Choices must be written verbatum."
    puts "The choice are indicated with *surrounding*."
    puts "\n"
    puts "After getting into the prestigious Browning School"
    puts "You care given the choice of what classes to take."
    puts "Legendary Students have went to Browning including:"
    puts "Chris Haawk, Amedeo's dad, and the person who invented Dora."
    puts "All of these alumni have been taught by 🅱ichael 🅱ngrisani"
    puts "\n"
    puts "The potential class are *AP_CompSci*, *Advanced_Topics*"
    print "> "

    action = $stdin.gets.chomp

    if action == "AP_CompSci" || action == "AP_Compsci"
      puts "\n"
      puts "Computer-Science at Browning is reggarded as the hardest class in the school."
      puts "You are nervous when you join fearing being swamped in work."
      puts "Lucky the teacher is your favorite, Mr.🅱han."
      puts "An A in this class is quite common."
      return 'AP_CompSci_0'
    
    
    elsif action == "Advanced_Topics" || action == "advanced_Topics"
      puts "\n"
      puts"This class is seen as the senior cruise class."
      puts "Taught by Ms.🅱olf, an A in this class is expected."
      return 'Advanced_Topics_0'
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Class_Selection'
    end
  end
end

class AP_CompSci_0 < Scene

  def enter()
    puts "\n"
    puts "You arrive in a class with 16 students."
    puts "This is quite surprising considering this is such a hard course."
    puts "After completing an unnecessarly wordy warm-up, the class begins."
    puts "You feel quite tired as a result of spending all night watching a new netflix series."
    puts "In class, you consider *sleeping*, *playing Skyrim*, or *paying attention*."
    print "> "

    action = $stdin.gets.chomp

    if action == "Sleeping" || action == "sleeping"
      puts "\n"
      puts "Your lack of attention is noticed by the Cheif Mr.🅱han."
      puts "You are given a stern talking to and a detention."
      puts "You wonder if sleepings was the best choice."
      return 'AP_CompSci_00'
      
    elsif action == "playing Skyrim" || action == "playing skyrim" 
      puts "\n"    
      puts "Your lack of participation goes unnoticed by Mr.🅱han."
      puts "The game was way more fun than paying attention."
      return 'AP_CompSci_21'
      
    elsif action == "paying attention" || action == "Paying attention"
      puts "\n"    
      puts "Mr. 🅱han notices your great participation."
      puts "You are commended for your efforts with Mr. 🅱han approval."
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class Advanced_Topics_0 < Scene
  
  def enter()
    puts "\n"  
    puts "The first day of class seems pretty chill."
    puts "The workload seems nonexistent and the GPA booster is in full effect."
    puts "\n"
    puts "After the first few classes, large amounts of homeworks are starting to be dished out."
    puts "Over the weekend, SIX hours of Sims are assigned."
    puts "You can either *do it*, *binge* the next big thing on Netflix, or *tour a brewery* with your uncle."
    print "> "

    action = $stdin.gets.chomp

    if action == "Do it" || action == "do it"
      puts "\n"
      puts "You are the only person in your class that finished the Sim's homework"
      puts "You are comended for your efforts."
      puts "You become the try hard of the class"
      puts "in a class seen as the cruise class."
      return 'Advanced_Topics_00'

    elsif action == "Binge" || action == "binge"
      puts "\n"
      puts "After binging American vandel,"
      puts "Your life becomes better on such a larger scale."
      puts "Although you come into class not having done the homework,"
      puts "lucky, you are in the marjority."
      return 'Advanced_Topics_22'
      
    elsif action == "tour a brewery" || "Tour a brewery"
      puts "\n"
      puts "Your limit of old people and wafting old grape."
      puts "You return home with no desire to do any homework."
      puts "All night you try getting rid of smell of the smell of:"
      puts "old cheese, cigars, and garlic from all of the snacks."
      puts "\n"
      puts "Your come to class with nothing done at all."
      return 'Advanced_Topics_00'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_0'
    end
  end
end


class Advanced_Topics_22 < Scene
    
  def enter()
    puts "\n"
    puts "Unlike prior years, not doing you homework "
    puts "results in a poor grade on the assignment."
    puts "With Ms.🅱olf's promotion, the class has become"
    puts "like an AP minus all the bullshit."
    puts "This will drastically affect your GPA."
    puts "\n"
    puts "You have a questions about how to improve your GPA."
    puts "Do you *approach* Ms.🅱olf about how to better or *brush it off*"
    
    action = $stdin.gets.chomp

    if action == "approach" || action == "Approach"
      puts "\n"
      puts "You try to talk to Ms.🅱olf after class."
      puts "But She leaves the room before you notice."
      puts "Parrellels to Mr.🅱han flash before you."
      return 'Advanced_Topics_11'
      
    elsif action == "brush it off" || action == "Brush it off"
      puts "\n"
      puts "You reasure yourself that there is no way"
      puts "Ms.🅱olf can fail the entire class."
      return 'Advanced_Topics_11'    
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_22'
    end
  end
end

class Advanced_Topics_00 < Scene
  
  def enter()
    puts "\n"
    puts "Unlike prior years, not doing you homework "
    puts "results in a poor grade on the assignment."
    puts "With Ms.🅱olf's promotion, the class has become"
    puts "like an AP minus all the bullshit."
    puts "This will drastically affect your GPA."
    puts "\n"
    puts "You have a questions about how to improve your GPA."
    puts "Do you *approach* Ms.🅱olf about how to better or *brush it off*"
    
    action = $stdin.gets.chomp

    if action == "approach" || action == "Approach"
      puts "\n"
      puts "You try to talk to Ms.🅱olf after class."
      puts "But She leaves the room before you notice."
      puts "Parrellel to Mr.🅱han flash before you."
      return 'Advanced_Topics_01'
      
    elsif action == "brush it off" || action == "Brush it off"
      puts "\n"
      puts "You reasure yourself that there is no way"
      puts "Ms.🅱olf can fail the entire class."
      return 'Advanced_Topics_01'    
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_00'
    end
  end
end

class Advanced_Topics_01 < Scene
  
  def enter()
    puts "\n"
    puts "Your recieve an A for the midterm."
    puts "Years of hardwork and preperation lead to the"
    puts "greatest satisfaction of your youung life."
    puts "Nothing more can amount to your achievements in this class."
    puts "\n"
    return 'End'
  end
end


class Advanced_Topics_11 < Scene
  
  def enter()
    puts "\n"   
    puts "Your recieve an C- for the midterm."
    puts "You nearly shit your pants upon seeing this."
    puts "This single grade leads to you becoming a dead beat on the street"
    puts "who will never recieve a job and has to live off of food stamps."
    puts "JKK. In reality, you just drop xDDD."
    return 'Class_Selection'
  end
end


class AP_CompSci_00 < Scene
  
  def enter()
    puts "\n"  
    puts "You speak to Mr. Reynolds about getting the detension dropped."
    puts "You never hear back from Mr. Reynolds due to his work load."
    puts "You are considering dropping like the other 6 that already have."
    puts "\n"
    puts "Do you speak to Mr. Pelz about dropping the class"
    puts "You consider *dropping* or *staying* in the class"
    print "> "

    action = $stdin.gets.chomp

    if action == "dropping" || action == "Dropping"
      puts "\n"
      puts "You recieve a slip to drop the class."
      puts "You ask Mr. Khan to sign your slip."
      puts "You recieve the most passive agreement."
      puts "Mr. Pelz lets you drop only if you take another class instead."
      return 'Class_Selection'

    elsif action == "staying" || action == "Staying"
      puts "\n"
      puts "You decide to skip the detension."
      puts "Luckly no one notices that you skipped."
      puts "Your thought of dropping leaves a bad taste in Mr.🅱han mouth."
      return 'AP_CompSci_11'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class AP_CompSci_01 < Scene

  def enter()
    puts "\n"
    puts "Class is going well in general."
    puts "Midterm report cards are due in two weeks."
    puts "You still have not even made a codeHS account."
    puts "Do you *do it*, *photoshop it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_02'

    elsif action == "photoshop it" || action == "Photoshop it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_02'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0/10 which will greatly influence your grade."
      puts "Lucky you have completed all of your warm-ups."
      puts "You can still complet it later"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_11 < Scene

  def enter()
    puts "\n"
    puts "Class is going well in general."
    puts "Midterm report cards are due in two weeks."
    puts "You still have not even made a codeHS account."
    puts "Do you *do it*, *photoshop it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_12'

    elsif action == "photoshop it" || action == "Photoshop it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_12'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0/10 which will greatly influence your grade."
      puts "Lucky you have completed all of your warm-ups."
      puts "You can still complet it later"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_21 < Scene

  def enter()
    puts "\n"
    puts "Class is going well in general."
    puts "Midterm report cards are due in two weeks."
    puts "You still have not even made a codeHS account."
    puts "Do you *do it*, *photoshop it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_22'

    elsif action == "photoshop it" || action == "Photoshop it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_22'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0/10 which will greatly influence your grade."
      puts "Lucky you have completed all of your warm-ups."
      puts "You can still complet it later"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_22 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads reads" 
    puts "After two weeks, you recieve an A+."
    puts "\n"
    puts "Considering your effor across the entire year, you are quite pleased."
    puts "The fact that hours and hours of work and it pay of it such a monumental way is extremly satifying."
    puts "\n"
    return 'End'

  end
end

class AP_CompSci_02 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads reads" 
    puts "After two weeks, you recieve an A+."
    puts "\n"
    puts "Considering your effor across the entire year, you are quite pleased."
    puts "The fact that hours and hours of work and it pay of it such a monumental way is extremly satifying."
    puts "\n"
    return 'End'

  end
end


class AP_CompSci_12 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads" 
    puts "After two weeks, you recieve an A+."
    puts "\n"
    puts "Considering your effor across the entire year, you are quite pleased."
    puts "However, you get roasted in your comment."
    puts "The comment reads that your excifc amount of sleep impeads your learning."
    puts "\n"
    return 'End' 
  end
end

