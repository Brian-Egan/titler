numMon = Monster.count
i = 1
while i < numMon + 1
	if Monster.exists?(i)
		mn = Monster.find(i)
		@newM = OldMonster.new(:name => mn.name, :noun => mn.noun, :adjective => mn.adjective, :likes_count => mn.likes_count)
		@newM.save
	end
	i += 1
end

