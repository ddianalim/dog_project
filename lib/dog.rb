class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(new_age)
        @age = new_age
    end

    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(food_item)
        # favorite_foods.each do |food|
        #     return true if food.downcase == food_item.downcase
        # end
        # false
        if favorite_foods.map(&:downcase).include?(food_item.downcase)
            return true
        end
        false
    end
end
