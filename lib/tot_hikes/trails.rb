class TotHikes::Hikes 
  
attr_accessor :name :address :distance_from_nyc
  @@all = [] 
  
  def initialize(name, address, distance_from_nyc)
    @name = name 
    @address = address
    @distance_from_nyc = distance_from_nyc
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
     @@all << self.scrape_trails
  end
  
  def self.scrape_trails 
    trails = []
    trails << self.scrape_one 
    trails << self.scrape_two 
    trails << self.scrape_three
  end 
  
  def self.scrape_one 
    #actual scraped data for each trail 
  end 
  
  def self.scrape_two
    
  end 
  
  def self.scrape_three 
    
  end 
  
  
end 
    
    