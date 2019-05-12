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
    html = (open("https://kid101.com/10-kid-friendly-scenic-hikes-around-new-york-places-new-york/"))
    doc = Nokogiri::HTML(html)
    name = doc.css
    miles = doc.css
    distance_from_nyc = "Located approximately #{miles} miles from NYC"
    hike_one = self.new(name, location, distance_from_nyc)
  end 
  
  def self.scrape_two
    html = (open("https://kid101.com/10-kid-friendly-scenic-hikes-around-new-york-places-new-york/"))
    doc = Nokogiri::HTML(html)
    name = doc.css
    miles = doc.css
    distance_from_nyc = "Located approximately #{miles} miles from NYC"
    hike_one = self.new(name, location, distance_from_nyc)
  end 
  
  def self.scrape_three 
    html = (open("https://kid101.com/10-kid-friendly-scenic-hikes-around-new-york-places-new-york/"))
    doc = Nokogiri::HTML(html)
    name = doc.css
    miles = doc.css
    distance_from_nyc = "Located approximately #{miles} miles from NYC"
    hike_one = self.new(name, location, distance_from_nyc)
  end 
  
  
end 
    
    