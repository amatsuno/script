adulincities = T{
"西アドゥリン",
"東アドゥリン"
}
move_equip = {
    ['黒'] = {feet="ヘラルドゲートル",},
    ['学'] = {feet="ヘラルドゲートル",},
    ['白'] = {feet="ヘラルドゲートル",},
    ['学'] = {feet="ヘラルドゲートル",},
    ['詩'] = {feet="ＡＤコテュルヌ+2",},
}
function set_move(original)
    local setm = nil
    --add_to_chat(123, 'adulin?'..world.area..' job='..player.main_job)
    if adulincities:contains(world.area) then
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