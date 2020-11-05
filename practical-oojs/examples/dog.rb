class Dog

  attr_accessor :first_name, :fav_snacks

  @@all = []

  def initialize(first_name, fav_snacks)
    @first_name = first_name
    @fav_snacks = fav_snacks
    @@all << self
  end

  def say_name
    puts "woof my name is #{self.first_name}"
  end

  def self.all
    @@all
  end 

  def self.find_by_name(first_name)
    Dog.all.find do |dog_instance|
      dog_instance.first_name == first_name
    end
  end

end

fezzik = Dog.new("Fezzik", ["Peanut Butter", "Soccer Balls"])
lucy = Dog.new("Lucy", ["Dog Treats", "Turkey Sandwiches"])

Dog.find_by_name("Lucy")