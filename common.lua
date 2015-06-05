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
getbuffs = {
    ['風'] = T{
        'input /ma インデフォーカス <me>;wait 6;input /ma リフレシュ <me>',
        'input /ma ストンスキン <me>',
    },
    ['黒'] = T{
        'input /ma ファランクス <me>; wait 6;input /ma リフレシュ <me>',
        'input /ma ストンスキン <me>',
        'input /ma アクアベール <me>',
    },
}
function get_buff(n)
    if getbuffs[player.main_job] and getbuffs[player.main_job][n] then
        _my_send_command(getbuffs[player.main_job][n])
    end
end
function cancel_buff(spell)
    if windower.ffxi.get_spell_recasts()[spell.recast_id] > 0 then
        return
    end
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

dumpf = file.new('data/logs/dump.log',true)
if not dumpf:exists() then
    dumpf:create()
end

indent='\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'
function dumpProperties(t,comment,level)
    if not _settings.debug_mode then return end
    if type(t) == 'table' then
        local spaces=string.sub(indent,1,level)
        local spaces2=string.sub(indent,1,level+1)
        local key,val
        local f,err
        f, err = dumpf:append(spaces..comment..'={\n')
        if not f then
            add_to_chat(123, 'file.append error '..err)
        end
        for key,val in pairs(t)
        do
            if type(val) == 'string' or type(val) == 'number' then
               dumpf:append(spaces2..key..'="'..val..'"\n')
            elseif type(val) == 'boolean' then
                dumpf:append(spaces2..key..'='..tostring(val)..'\n')
            elseif type(val) == 'table' then
                dumpProperties(val, key,level+1)
            else
                dumpf:append(space2..key..' is '..tostring(type(val))..'\n')
            end
        end
        dumpf:append(spaces..'}--end of '..comment..'\n')
    elseif type(t) == 'number' or type(t) == 'string' then
        dumpf:append(spaces..comment..' ="'..t..'"\n')
    elseif type(t) == 'boolean' then
        dumpf:append(spaces..comment..' ='..tostring(t)..'\n')
    else
        dumpf:append(spaces..comment..' type is '..tostring(type(t))..'\n')
    end
end

function _my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end