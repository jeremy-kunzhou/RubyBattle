#require './Enemy.rb'
require './Role.rb'
class Player < Role
	attr_accessor :hp, :strength
	attr_writer :great

	def initialize (name, hp, strength)
		super(name)
		@hp = hp
		@strength = strength
		@great = "Great"
	end

	def beAttacked(power)
		@hp -= power
		puts @great
	end

	def attack(enemy)
		super(enemy)
		puts "#{name} is bonus attacking #{enemy.name}"
		enemy.beAttacked @strength
	end

	def isDead()
		@hp < 1
	end
end
