class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine
  
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end


class Class_Selection < Scene

  def enter()
    puts "After getting into the prestigious Browning School"
    puts "You are given the choice of what classes to take."
    puts "\n"
    puts "Legendary Students have went to Browning including:"
    puts "Chris Haawk, Amedeo's dad, and the person who invented Dora."
    puts "All of these alumni have been taught by 🅱ichael 🅱ngrisani"
    puts "The potential class are AP_Chemistry, French, Advanced_Topics, and AP_CompSci"
    print "> "

    action = $stdin.gets.chomp

    if action == "AP_CompSci"
      puts "Computer-Science at Browning is reggarded as the hardest class in the school."
      puts "You are nervous when you join fearing being swamped in work."
      puts "Lucky the teacher is your favorite, Mr.🅱han."
      puts "An A in this class is quite common."
      return 'AP_CompSci_0'

    elsif action == "Advanced_Topics"
      puts "This class is a complete joke."
      puts "People only ever take this class to play Sims as homework."
      puts "Or atleast that is the reputation."
      puts "When you arive to the class, you relieze it is not longer taught by Dr. 🅱oel."
      puts "Ms. 🅱olf, the new teacher, intendeds to make this a hard class."
      puts "A's become a distant dream with her giving B's to many."
      return 'Advanced_Topics_0'
      
    elsif action == "French" 
      puts "You decide to follow a language."
      puts "The teacher is Ms.🅱yan."
      puts "Famous student like 🅱unter 🅱tern have taken this class."
      puts "You wish to follow in his footsteps."
      
      
    elsif action == "AP_Chemistry"
      puts "AP Chemistry is actual hardest class in Browning taugh by Ms. 🅱ing."
      puts "The class is dread across the Browning hall ways."
      puts "An A in the class is as rare as a photo with Dan Shiffman."
      puts "To survive in this class a serious amount of hardwork is required."

    else
      puts "DOES NOT COMPUTE!"
      return 'Class_Selection'
    end
  end
end

class Avanced_Topics_0 < Scene 
  
  def enter()
    puts "Your enter a class with 16 seniors and 5 junoirs."
    puts "Your first assignment playing Sims 3."
    puts "Six hours of Sims has to be done in one week."
    puts "\n"
    puts "Being the Browning slack class, you can either:"
    puts "Do it or skip."
    print "> "
    
    action = $stdin.gets.chomp

    if action == "Skip"
      puts "Not doing the homework is notice."
      puts "You recieve a 0 in that assignment"
      puts "Luckly you are in the majority of the class that didn't do it."
    
    elsif action == "Do it" 
      puts "You are the only person in the class that did the homework."
      puts ""
      puts ""
      puts ""
      
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_0'
    end
  end
end
    


class AP_CompSci_0 < Scene

  def enter()
    puts "You arrive in a class with 16 students."
    puts "This is quite surprising considering this is such a hard course."
    puts "After completing an unnecessarly wordy warm-up, the class begins."
    puts "You feel quite tired as a result of spending all night watching a new netflix series."
    puts "In class, you consider sleeping, playing Skyrim, or paying attention."
    print "> "

    action = $stdin.gets.chomp

    if action == "sleeping"
      puts "Your lack of attention is notice by the Cheif Mr.🅱han."
      puts "You are given a stern talking to and a detention."
      puts "You wonder if sleepings was the best choice."
      return 'AP_ComSci_00'
      
    elsif action == "playing Skyrim"
      puts "Your lack of participation goes unnoticed by Mr.🅱han."
      puts "The game was way more fun than paying attention."
      return 'AP_ComSci_01'
      
    elsif action == "paying attention" 
      puts "Mr. 🅱han notices your great participation."
      puts "You are commended for your efforts with Mr. 🅱han approval."
      puts ""
      return 'AP_ComSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class AP_CompSci_00 < Scene
  
  def enter()
    puts "You speak to Mr. Reynolds about getting the detension dropped."
    puts "You never hear back from Mr. Reynolds due to his work load."
    puts "You are considering dropping like the other 6 that already have."
    puts "\n"
    puts "Do you speak to Mr. Pelz about dropping the class"
    puts "You consider dropping or staying in the class"
    print "> "

    action = $stdin.gets.chomp

    if action == "dropping"
      puts "You recieve a slip to drop the class."
      puts "You ask Mr. Khan to sign your slip."
      puts "You recieve the most passive agreement."
      puts "Mr. Pelz lets you drop only if you take another class instead."
      return 'Class_Selection'

    elsif action == "staying"
      puts "You decide to skip the detension."
      puts "Luckly no one notices that you skipped."
      puts "Your thought of dropping leaves a bad taste in Mr.🅱han mouth."
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class AP_CompSci_01 < Scene

  def enter()
    puts "Class is going well in general."
    puts "Midterm report cards are due in two weeks."
    puts "You still have not even made a codeHS account."
    puts "Do you do the CodeHS homework, photoshop it, or not do it at all?"
    print "> "

    action = $stdin.gets.chomp

    if action == "Do it"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_02'

    elsif action == "PhotoShop"
      puts "You recieve full credit for your <b> hard work. </b>"
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_02'
      
    elsif action == "not do it at all"
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

class AP_CompSci_02 < Scene
  def enter()
    puts "Report cards come back and they read" 
    puts "What was your earlier action in class."
    puts " -> Paying attention, sleeping, playing Skyrim"
    print ">"
    
    action = $stdin.gets.chomp
    
    if action == "paying attention" 
      puts "After two weeks, you recieve an A+."
      puts "Considering your effor across the entire year, you are quite pleased."
      puts "The fact that hours and hours of work pay of it such a monumental way is extremly satifying."
      
    elsif action == "sleeping"
      puts "After two weeks, you recieve an A+."
      puts "Considering your effor across the entire year, you are quite pleased."
      puts "However, you get roasted in your comment."
      puts "The comment reads that your excifc amount of sleep impeads your learning."
        
    elsif action == "playing Skyrim"
      puts "After two weeks, you recieve an A+."
      puts "Considering your effor across the entire year, you are quite pleased."
      puts "However, you get roasted in your comment."
      puts "The comment reads that less time should be spent on your computer."
      puts ""
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_02'
    end
  end
end


class Map
  @@scenes = {
    'Class_Selection' => Class_Selection.new(),
    'AP_CompSci_0' => AP_CompSci_0.new(),
    'AP_CompSci_00' => AP_CompSci_00.new(),
    'AP_CompSci_01' => AP_CompSci_01.new(),
    'AP_CompSci_02' => AP_CompSci_02.new(),
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end


a_map = Map.new('Class_Selection')
a_game = Engine.new(a_map)
a_game.play()



