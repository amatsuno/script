adulincities = T{
"西アドゥリン",
"東アドゥリン"
}
move_equip = {
    ['黒'] = {feet="ヘラルドゲートル",},
    ['学'] = {feet="ヘラルドゲートル",},
    ['白'] = {feet="ヘラルドゲートル",},
    ['学'] = {feet="ヘラルドゲートル",},
    ['赤'] = {legs="ブラッドクウィス",},
    ['詩'] = {feet="ＡＤコテュルヌ+2",},
    ['風'] = {feet="ジオサンダル",},
}
function cancel_buff(spell)
	if spell.name == 'ストンスキン' and buffactive['ストンスキン'] then
		send_command('@wait 1.2;cancel 37;')
	elseif spell.name == 'スニーク' and buffactive['スニーク'] and spell.target.id == player.id then
		send_command('@wait 0.1;cancel 71;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身'] then
		send_command('@wait 0.3;cancel 66;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(2)'] then
		send_command('@wait 0.3;cancel 444;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(3)'] then
		send_command('@wait 0.3;cancel 445;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(4+)'] then
		send_command('@wait 0.3;cancel 446;')
	end
end
function set_move(original)
    local setm = nil
    --add_to_chat(123, 'adulin?'..world.area..' job='..player.main_job)
    if adulincities:contains(world.area) and player.wardrobe['カウンセラーガーブ'] then
        --add_to_chat(123, 'adulin')
        setm = {body="カウンセラーガーブ",}
    else
        if move_equip[player.main_job] ~= nil then
            setm = move_equip[player.main_job]
        end
    end
    if original ~= nil then
        return set_combine(original, setm)
    else
        return setm
    end
end