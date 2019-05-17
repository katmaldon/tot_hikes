class TotHikes::CLI 
  
  def call 
    greeting 
    TotHikes::Hikes.scrape_trails
    list_trails 
    selection
    goodbye 
  end 

  def greeting 
    "Welcome to TotHikes!"
  end 
  
  def list_trails 
    puts "Trail selection:"
    @trails = TotHikes::Hikes 
    @trails.scrape_trails.each_with_index do |trail, i=1|
      puts "#{trail.name}"
    end 
  end 
  
  def selection 
    puts "Pick the hike you'd like to know more about or type exit to exit the application."
    input = nil
    while input != "exit"
    input = gets.strip.downcase
      if input.to_i > 0
        trail = @trails.scrape_trails[input.to_i-1]
          puts "#{trail.name} - #{trail.location}"
      elsif input == "selection" 
        list_trails 
      else 
        puts "I'm sorry, that's not a valid entry. Type selection to see a list of trails or exit to exit the application."
      end 
    end 
  end 
  
  def goodbye
    puts "Have a great time and visit us again soon for more outdoors adventures!"
  end 
  
  
end 

