class Human
	attr_accessor :health, :strength, :intelligence, :stealth

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 5
		end
	end
end


human1 = Human.new
human2 = Human.new

puts human1.attack(human2)