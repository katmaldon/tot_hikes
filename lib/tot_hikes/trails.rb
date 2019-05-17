class TotHikes::Hikes 
  
attr_accessor :name, :address
  @@all = [] 
  
  def initialize(name, address)
    @name = name 
    @address = address
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
    html = (open("https://57hours.com/blog/best-nyc-hiking-trails/"))
    doc = Nokogiri::HTML(html)
    name = doc.css("h2")[1].text
    location = doc.css(" p i strong")[0].text
    hike_one = self.new(name, location)
  end 
  
  def self.scrape_two
    html = (open("https://57hours.com/blog/best-nyc-hiking-trails/"))
    doc = Nokogiri::HTML(html)
    name = doc.css("h2")[2].text
    location = doc.css(" p i strong")[1].text
    hike_two = self.new(name, location)
  end 
  
  def self.scrape_three
    html = (open("https://57hours.com/blog/best-nyc-hiking-trails/"))
    doc = Nokogiri::HTML(html)
    name = doc.css("h2")[3].text
    location = doc.css(" p i strong")[2].text
    hike_three = self.new(name, location)
  end 
  
end 
  
    