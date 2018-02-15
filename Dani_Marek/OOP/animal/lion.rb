require_relative 'mammal'
class Lion < Mammal

	attr_accessor :health
	def initialize
		super
		@health = 170
	end

	def attack_town
		@health -= 50
		self 
	end

	def eat_humans
		@health += 20
		self
	end

	def fly
		@health -= 10
		self
	end

	def display_health
		p "This is an a-hole lion"
		super
	end
end
mammal2 = Lion.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health 
puts mammal2
