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
    recover_spells['静寂'] = 'サイレナ'
    recover_spells['石化'] = 'ストナ'
    recover_spells['スロウ'] = 'イレース'
    recover_spells['ヘヴィ'] = 'イレース'
    recover_spells['ドラウン'] = 'イレース'
    recover_spells['イレース回復'] = 'イレース'
    buff_spells = {
        ['プロテス'] = 'プロテスV',
        ['シェル'] = 'シェルV',
        ['ヘイスト'] = 'ヘイスト',
        ['リジェネ'] = 'リジェネV'
    }
    local base = {
        main="エミネンバグナウ",
        ammo="ヘイストピニオン+1",
        head={ name="テーオンシャポー", augments={'Accuracy+12','"Triple Atk."+1',}},
        body="ＳＮタバード+1",
        hands={ name="テーオングローブ", augments={'Accuracy+5','System: 1 ID: 356 Val: 5',}},
        legs="エスピルホーズ",
        feet="エスピルソックス",
        neck="クジャクの護符",
        waist="ウィンドバフベルト",
        left_ear="ブランデシュピアス",
        right_ear="ブレードボンピアス",
        left_ring="エンライベンリング",
        right_ring="ベヒメンスリング",
        back="アンコレットマント",
    }
--戦闘時
    local normal = set_combine(base,
        {
        })
    local normal2 = set_combine(base,
        {
        })
    local treasure = {
        }
    local evation = set_combine(base,
        {
        })
    local def=set_combine(evation,
        {
            back="リパルスマント",
        })
    local mgdef = set_combine(def,
        {
            head="ウェフェラクレット",
            body="ウェフェラローブ",
            hands="ウェフェラカフス",
            legs="ウェフェラスロップ",
            left_ring="ダークリング",
            right_ring="ダークリング",
        })
--WS装備
    local ws_hi = set_combine(base,
        {
        })
    local we_Evisceration = set_combine(base,
        {
        })
    local we_rudra = we_Evisceration
--
    local idle = {
        back="リパルスマント",
    }
    local idle_def=set_combine(evation,
        {
        })
    sets.JA = {}
    sets.ws = {}
    sets.ws['秘'] = ws_hi
    sets.ws['エヴィサレーション'] = we_Evisceration
    sets.ws['ルドラストーム'] = we_rudra
    sets.idle = {}
    sets.idle.idle = idle
    sets.engaged = {}
    sets.engaged.treasure = false
    sets.engaged.fight = normal
    sets.engaged.normal = normal
    sets.engaged.normal2 = normal2
    sets.engaged.evation = evation
    sets.engaged.def = def
    sets.engaged.mgdef = mgdef
    sets.engaged.def_eva = evation
    sets.equip = {}
    sets.equip.treasure = treasure;
    send_command('input /macro book 10;wait .2;input /macro set 1')
    initCounter()
end
function initCounter()
--カウンター定義
--[[
    [1599] = {id=1599,en="Hammer Beak",ja="ハンマービーク"},
    [1600] = {id=1600,en="Poison Pick",ja="ポイズンピック"},
    [315] = {id=315,en="Dark Spore",ja="ダークスポア",element=6,icon_id=46,monster_level=10,prefix="/monsterskill",range=0,targets    [314] = {id=314,en="Silence Gas",ja="サイレスガス",element=6,icon_id=46,monster_level=30,prefix="/monsterskill",range=0,target
    [308] = {id=308,en="Frogkick",ja="フロッグキック",element=6,icon_id=46,monster_level=10,prefix="/monsterskill",range=2,targets=32,tp_cost=1000},
    [2028] = {id=2028,en="Fulmination",ja="フルミネーション"},
    
]]
    counter = {}
    counter.action = {}
    counter.action.phdef={}
    counter.action.phdef.condition = {
        only_self_target = true,
        spell={ --270,271,273,トラ
            308,    --フロッグキック
            1599,    --en="Hammer Beak",ja="ハンマービーク"},
            1600,    --en="Poison Pick",ja="ポイズンピック"},
            2096,
            2099,
        },
        target={'SELF'},
    }
    counter.action.phdef.preaction={equip=sets.engaged.def,}
    counter.action.phdef.interruptaction ={equip=sets.engaged.fight,}
    counter.action.phdef.finishaction={equip=sets.engaged.fight,}
    
    counter.action.mgdef={}
    counter.action.mgdef.condition = {
        only_self_target = true,
        spell={
            238,56,163,
            314, 315,       --ダークスポア、サイレスガス
            189,190,
            191,192,499,    --ストンガIII,IV,ストンジャ
            2028,           --フルミネーション"
            2094,
            2098,
            3275,
        },
        target={'SELF'},
    }
    counter.action.mgdef.preaction=
        {equip=sets.engaged.mgdef,}
    counter.action.mgdef.interruptaction = counter.action.phdef.interruptaction
    counter.action.mgdef.finishaction = counter.action.phdef.interruptaction
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
	if spell.name == '空蝉の術:壱' and buffactive['分身'] then
		send_command('@wait 3;cancel 66;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(2)'] then
		send_command('@wait 3;cancel 444;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(3)'] then
		send_command('@wait 3;cancel 445;')
	elseif spell.name == '空蝉の術:壱' and buffactive['分身(4+)'] then
		send_command('@wait 3;cancel 446;')
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
            --[[
            send_command(
              'send '..use_sub.pc..' gs equip sets.equip.IDLE'
            ..';wait 4;send '..use_sub.pc..' /follow '..player.name
            ..';wait 1;send '..use_sub.pc..' /follow '..player.name
            )
            ]]
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
    if sets.engaged.treasure then
        return set_combine(sets.engaged.fight, sets.equip.treasure)
    else
        return sets.engaged.fight
    end
end
function set_eva()
    if sets.engaged.treasure then
        return set_combine(sets.engaged.evation, sets.equip.treasure)
    else
        return sets.engaged.evation
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
    elseif buffactive['静寂'] then
        return '静寂'
    elseif buffactive['ヘヴィ'] then
        return 'ヘヴィ'
    elseif buffactive['防御力ダウン'] 
        or buffactive['魔法防御力ダウン'] 
        or buffactive['攻撃力ダウン']
        or buffactive['魔法命中率ダウン'] 
        or buffactive['命中率ダウン']then
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
    if not buffactive['プロテス'] then
        return 'プロテス'
    elseif not buffactive['シェル'] then
        return 'シェル'
    elseif not buffactive['ヘイスト'] then
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
        windower.add_to_chat(0xCE, 'need '..rhp..' points recover')
     end
end
function recover()
    if player.hpp < 76 then
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
            windower.add_to_chat(0xCE, '命中')
            sets.engaged.fight = sets.engaged.normal2
            initCounter()
            --counter.action.phdef.interruptaction.equip=sets.engaged.fight 
            --counter.action.phdef.finishaction.equip=sets.engaged.fight 
            equip({range=empty,ammo='ホーンドタスラム',})
        elseif sets.engaged.fight == sets.engaged.normal2 then
            windower.add_to_chat(0xCE, '回避')
            sets.engaged.fight = sets.engaged.evation
            --counter.action.phdef.interruptaction.equip=sets.engaged.fight 
            --counter.action.phdef.finishaction.equip=sets.engaged.fight 
            initCounter()
            equip({range='ベスタスベーン',ammo=empty,})
        elseif sets.engaged.fight == sets.engaged.evation then
            windower.add_to_chat(0xCE, '防御')
            sets.engaged.fight = sets.engaged.def
            --counter.action.phdef.interruptaction.equip=sets.engaged.fight 
            --counter.action.phdef.finishaction.equip=sets.engaged.fight 
            initCounter()
            equip({range='ベスタスベーン',ammo=empty,})
        else
            windower.add_to_chat(0xCE, '通常')
            sets.engaged.fight = sets.engaged.normal
            --counter.action.phdef.interruptaction.equip=sets.engaged.fight 
            --counter.action.phdef.finishaction.equip=sets.engaged.fight 
            initCounter()
            equip({range='ベスタスベーン',ammo=empty,})
        end
        if sets.engaged.fight ~= nil then
            equip(set_fight())
        end
    elseif command == 'evation' then
        windower.add_to_chat(0xCE, '回避防御')
        equip(set_eva())
    elseif command == 'fight' then
        windower.add_to_chat(0xCE, '殴り')
        equip(set_fight())
    elseif command == 'move' then
        equip(sets.idle.idle)
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
    local rhp = player.max_hp - player.hp
    if rhp > 100 and player.hpp < 70 then
        recover_hp(rhp)
    end
end)
include('lib/counter_action.lua')
