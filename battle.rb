require './Player.rb'
require './Enemy.rb'
require './battlerule.rb'

def promp
	print ">"
end

def startbattle (player, enemy)
	puts "Battle need to start!"

	while true
		puts "Who will attack #{player.name}(0) or #{enemy.name}(1)?"
		promp; choice = gets.chomp
		if (choice == "0")
			player.attack enemy
		elsif (choice == "1")
			enemy.attack player
		else
			next
		end

		if (RuleB.isDead(player))
			puts "#{player.name} lost! But he will go back!"
			break
		end
	
		if (RuleB.isDead(enemy))
			puts "#{enemy.name} is dead again!"
			puts "#{enemy.name}  will never beat #{player.name}!"
			break
		end
	
	end

end

kun = Player.new "kun", 10000, 100
puts "Behold, the warrior #{kun.name}!"

enemylist = []

qiong = Enemy.new "qiong", 200,10
enemylist.push qiong
qiong2 = Enemy.new "qiong2", 200,10
enemylist.push qiong2

enemylist.each do |enemy|

	puts "and rubish, #{enemy.name}"

	startbattle kun,enemy
	
end
