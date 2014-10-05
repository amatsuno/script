function get_sets()
    set_language('japanese')
    use_sub = {}
    use_sub.recover = false
    use_sub.pc = nil

    recover_spells = {}
    recover_spells['麻痺'] = 'パラナ'
    recover_spells['暗闇'] = 'ブライナ'
    recover_spells['バインド'] = 'イレース'
    recover_spells['悪疫'] = 'カーズナ'
    recover_spells['毒'] = 'ポイゾナ'
    recover_spells['石化'] = 'ストナ'
    recover_spells['スロウ'] = 'イレース'
    recover_spells['ヘヴィ'] = 'イレース'
    recover_spells['ドラウン'] = 'イレース'
    recover_spells['イレース回復'] = 'イレース'
    buff_spells = {
        ['ヘイスト'] = 'ヘイスト',
        ['リジェネ'] = 'リジェネV'
    }
    local base = {
        head="ウァールマスク",
        body="タウマスコート",
        hands="ユイトルリスト",
        legs="ＩＵタイツ+1",
        feet="マニボゾブーツ",
        waist="セトルベルト",
        left_ear="素破の耳",
        right_ear="ブルタルピアス",
        left_ring="エポナリング",
        right_ring="ラジャスリング",
        range="レイダーブーメラン",
        back="エスリングマント",
    }
--戦闘時
    local normal = set_combine(base,
        {
            neck='アスパーネックレス',
           body="カークソハーネス",
        })
    local treasure = {
            hands="プランダアムレット",
            feet="ＲＤプーレーヌ+2",
        }
    local evation = set_combine(base,
        {
            body="マニボゾジャーキン",
            body="カークソハーネス",
            waist="カシリベルト",
            left_ring="ダークリング",
            right_ring="ダークリング",
            back="ボクサーマント",
        })
    local def=set_combine(evation,
        {
            neck="黄昏の光輪",
            back="モルスカマント",
        })
--WS装備
    local we_exenterator = set_combine(base,
        {
            neck="ブリーズゴルゲット",
           body="カークソハーネス",
            feet="マニボゾブーツ",
            left_ring="突風の指輪",
            waist="ブリーズベルト",
        })
--
    local idle = {
        back="リパルスマント",
        feet="ファジンブーツ",
    }
    local idle_def=set_combine(evation,
        {
            feet="ファジンブーツ",
            neck="黄昏の光輪",
            back="モルスカマント",
        })
    sets.JA = {}
    sets.ws = {}
    sets.ws['エクゼンテレター'] = we_exenterator
    sets.idle = {}
    sets.idle.idle = idle
    sets.engaged = {}
    sets.engaged.treasure = false
    sets.engaged.fight = normal
    sets.engaged.normal = normal
    sets.engaged.evation = evation
    sets.engaged.def = def
    sets.equip = {}
    sets.equip.treasure = treasure;
    send_command('input /macro book 3;wait .2;input /macro set 1')
    
end
function precast(spell)
    local equips = nil
    if sets.JA[spell.name] then
        equips = sets.JA[spell.name]
    elseif spell.type=="WeaponSkill" then
        if sets.ws[spell.name] then
            equips = sets.ws[spell.name]
        end
    end
    if equips ~= nil then
        equip(equips)
    end
end
function aftercast(spell)
    local equips = nil
    if player.status=='Engaged' then
        equip(set_fight())
    else
        equip(sets.idle.idle)
    end
end
function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.idle.idle)
        if use_sub.pc ~= nil then
            send_command(
              'send '..use_sub.pc..' gs equip sets.equip.IDLE'
            ..';wait 4;send '..use_sub.pc..' /follow '..player.name
            ..';wait 1;send '..use_sub.pc..' /follow '..player.name
            )
        end
    elseif new == 'Engaged' then
        if use_sub.pc ~= nil then
            send_command('send '..use_sub.pc..' exec stopfollow.txt'
                ..';wait 0.5;send '..use_sub.pc..' /as '..player.name
                )
            gain()
        end
        equip(set_fight())
    end
end
function buff_change(buff, gain)
    windower.add_to_chat(123, buff..tostring(gain))
    if use_sub.pc == nil then return end
    if gain then
        --gain buff
        if use_sub.recover and recover_spells[getDebuff(buff)] ~= nil then
            windower.add_to_chat(123, 'send recover command')
            send_command(windower.to_shift_jis('send '..use_sub.pc..' /ma '..recover_spells[getDebuff(buff)]..' '..player.name))
        end
    else
        --lose buff
        if player.status == 'Engaged' then
            execbuff(buff)
        end
        
    end
end
function set_fight()
    if sets.equip.treasure then
        return set_combine(sets.engaged.fight, sets.equip.treasure)
    else
        return sets.engaged.fight
    end
end

function execbuff(buff)
    if use_sub.pc == nil or buff == nil then return end
    
    local buffspell = buff_spells[buff]
    if  buffspell ~= nil then
        if buff == 'リジェネ' then
            command = 'wait 1;send '..use_sub.pc..' /ja 令狸執鼠の章 <me>'
                    ..';wait 1;send '..use_sub.pc..' /ma '..buffspell..' '..player.name
        else
            command = 'wait 1;send '..use_sub.pc..' /ma '..buffspell..' '..player.name
        end
        send_command(windower.to_shift_jis(command))
    end
end
function getDebuff()
    if buffactive['麻痺'] then
        return '麻痺'
    elseif buffactive['石化'] then
        return '石化'
    elseif buffactive['悪疫'] then
        return '悪疫'
    elseif buffactive['スロウ'] then
        return 'スロウ'
    elseif buffactive['暗闇'] then
        return '暗闇'
    elseif buffactive['バインド'] then
        return 'バインド'
    elseif buffactive['ヘヴィ'] then
        return 'ヘヴィ'
    elseif buffactive['防御力ダウン'] 
        or buffactive['魔法防御力ダウン'] then
        return 'イレース回復'
    elseif buffactive['バイオ'] then
        return 'イレース回復'
    elseif buffactive['毒'] then
        return '毒'
    elseif buffactive['ドラウン'] or buffactive['バーン'] or buffactive['チョーク'] 
        or buffactive['ラスプ'] or buffactive['ショック'] or buffactive['フロスト'] then
        return 'ドラウン'
    else
        return nil
    end
end
function getNeedBuff()
    if not buffactive['ヘイスト'] then
        return 'ヘイスト'
    elseif not buffactive['リジェネ'] then
        return 'リジェネ'
    else
        return nil
    end
end

function recover_hp(rhp)
    local rspell = nil
    if use_sub.pc ~= nil and use_sub.recover then
        if rhp > 500 then
            rspell = 'ケアルIV'
        elseif rhp > 300 then
            rspell = 'ケアルIII'
        elseif rhp > 100 then
            rspell = 'ケアルII'
        end
        if rspell ~= nil then
            send_command(windower.to_shift_jis('send '..use_sub.pc..' /ma '..rspell..' '..player.name))
        end
     end
end
function recover()
    if player.hpp < 70 then
        recover_hp(player.max_hp - player.hp)
    else
        local debuff = getDebuff()
        if debuff ~= nil then
            buff_change(debuff, true)
        else
            windower.add_to_chat(0xCE, '直さないといけない状態異常はないよ～')
        end
    end
end
function gain()
    local needbuf = getNeedBuff() 
    if needbuf ~= nil then
        windower.add_to_chat(123, 'add '..needbuf)
        execbuff(needbuf)
    end
end

function self_command(command)
    if command == 'toggle TP set' then
        if sets.engaged.fight == sets.engaged.normal then
            windower.add_to_chat(0xCE, '回避')
            sets.engaged.fight = sets.engaged.evation
        elseif sets.engaged.fight == sets.engaged.evation then
            windower.add_to_chat(0xCE, '防御')
            sets.engaged.fight = sets.engaged.def
        else
            windower.add_to_chat(0xCE, '通常')
            sets.engaged.fight = sets.engaged.normal
        end
        if sets.engaged.fight ~= nil then
            equip(set_fight())
        end
    elseif command == 'evation' then
        windower.add_to_chat(0xCE, '回避')
        sets.engaged.fight = sets.engaged.evation
        equip(set_fight())
    elseif command == 'fight' then
        windower.add_to_chat(0xCE, '通常')
        sets.engaged.fight = sets.engaged.normal
        equip(set_fight())
    elseif command == 'treasure' then
        if sets.engaged.treasure then
            windower.add_to_chat(0xCE, 'トレハンOFF')
            sets.engaged.treasure = false
        else
            windower.add_to_chat(0xCE, 'トレハンON')
            sets.engaged.treasure = true
        end
    elseif command:startswith('use sub') then
        local args = windower.from_shift_jis(command):split(' ')
        if use_sub.pc ~= nil then
            windower.add_to_chat(0xCE, '２アカ未使用')
            use_sub.pc = nil
            use_sub.recover = false
        elseif #args >= 3 then
            windower.add_to_chat(0xCE, '２アカ使用 pc='..args[3])
            use_sub.pc = args[3]
            use_sub.recover = true
        end
    elseif command == 'stna' then
        recover()
    elseif command == 'gain' then
        gain()
    elseif command:startswith('recover') then
        if use_sub.pc ~= nil then
            if not use_sub.recover then
                windower.add_to_chat(0xCE, '状態異常回復させる')
                use_sub.recover = true
            else
                windower.add_to_chat(0xCE, '状態異常回復させない')
                use_sub.recover = false
            end
        end                
    end
end
             
windower.register_event('hp change', function(new_hp, old_hp)
    local rhp = old_hp - new_hp
    if rhp > 100 and player.hpp < 70 then
        recover_hp(rhp)
    end
end)

