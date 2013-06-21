#require './Player.rb'
class Enemy
	attr_accessor :name, :hp, :strength

	def initialize (name, hp, strength)
		@name = name
		@hp = hp
		@strength = strength
	end

	def attack(player)
		player.beAttacked @strength
	end

	def beAttacked(power)
		@hp -= power
	end

	def isDead()
		@hp < 1
	end
end
