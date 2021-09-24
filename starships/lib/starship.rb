require 'pry'
class Starship 
@@all = [] #responsibility of this variable is to store all new instances of the class
    # attr_accessor :name, :model
    # :name => 

    def initialize(attributes) # hash of name, model key/value pairs
        attributes.each do |key, value|
            self.attr_accessor :attribute_name  #-> dynamically makes the attributes
            binding.pry
            self.send("#{key}=", value)
        end
        save
    end 
        # @name = name
        # @model = model
        # save
    def save
        @@all << self
    end

    def self.all 
        @@all
    end

    def print_name
        puts self.name
    end

    def self.find(name)
        #query the clas instnaces to return an instance that matches the name that was submitted
        s = self.all.find do |starship|
            starship.name == name
        end
        binding.pry
    end
end 


starship = Starship.new(name: "icelanding", model:"falcon", color:"rainbow")
starblazer = Starship.new(name: "luna_pearl", model:"sketch", color: "black and white")
# Starship.all
# binding.pry
Starship.find("luna_pearl")