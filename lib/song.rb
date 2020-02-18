class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name=nil)
    @name = name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    song.save
    song
  end 
  
  def self.new_by_name(name)
    song = Song.new(name)
    song
  end 
  
  def self.create_by_name(name)
    song = Song.new(name)
    song.save
    song
  end 
  
  def self.find_by_name(name)
    self.all.select {|song| song.name == name }
  end 
  
  

end


