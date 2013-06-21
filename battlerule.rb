#require './Player.rb'
#require './Enemy.rb'

module RuleB

	def self.isDead (role)
		role.hp < 1
	end
end

