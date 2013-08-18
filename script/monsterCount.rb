@OldMCount = OldMonster.count
@NewMCount = Monster.count
@mCount = @OldMCount + @NewMCount
@fM = TotalMonsters.find(1)
@fM.monster_count = @mCount
@fM.save

# @TmCount = TotalMonsters.new(:monster_count => @mCount)