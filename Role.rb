class Role
	attr_accessor :name

	def initialize (name)
		@name = name
	end

	def attack(enemy)
		puts "#{name} is attacking #{enemy.name}"
		enemy.beAttacked @strength
	end
end
