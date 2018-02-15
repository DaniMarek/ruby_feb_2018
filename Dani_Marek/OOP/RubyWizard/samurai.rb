require_relative 'human'
class Samurai < Human
	@@samurai_count = 0
	def initialize
		super
		@health = 200
	end

	def death_blow
		if obj.class.ancestors.include?(Human)
			obj.health = 0
		end
	end

	def meditate
		@health = 200
	end

	def how_many
		puts @@samurai_count
	end
end


 # Samurai should have a default health of 200
 # Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0
 # Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health
 # Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are
