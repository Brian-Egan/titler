@OldMCount = OldMonster.count
@NewMCount = Monster.count
@mCount = @OldMCount + @NewMCount
@TmCount = TotalMonsters.new(:monster_count => @mCount)
@TmCount.save
# @fM = TotalMonsters.find(1)
# @fM.monster_count = @mCount
# @fM.save
