class Pizza
@@all = []
    # attr_accessor :name, :ingredients, :desc

    def initialize(name:, ingredients:, desc:)
        self.name = name
        self.ingredients = ingredients
        self.desc = desc
        save
    end 
    def initialize(attributes)
     self.attr_accessor :attribute_name
        attributes.each do |key, value|
            self.send("#{key}=", value)
            
        end
        save
    end

    def save 
        @@all << self
    end
    def print_attributes
        puts self.name
        puts self.ingredients
        puts self.desc
    end 

def self.all
    @@all
end


end

Pizza.new(name:"cheese", ingredients:"pepperoni, vegan", desc:"a very toasty pizza")
