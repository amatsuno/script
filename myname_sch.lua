function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
--FC_BASE
    local pre_base ={
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="アンフルローブ",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="アートシクロップス",
        feet="ＰＤローファー+1",
        waist="ニヌルタサッシュ",
        left_ear="胡蝶のイヤリング",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    local pre_low = {
        ammo="インカントストーン",
        head="ナティラハット",
        body="アンフルローブ",
    }
    local mid_base = pre_base
    
    --光属性
    local pre_light = set_combine(pre_base, {main="アーカI",})
    local mid_light = set_combine(mid_base, {main="アーカII",})
    local pre_healing = pre_light
    
    --風属性
    local pre_wind = set_combine(pre_base, {main="バユバタI",})
    local mid_wind = set_combine(mid_base, {main="バユバタII",})

    --土属性
    local pre_earth = set_combine(pre_base, {main="ビシュラバI",})
    local mid_earth = set_combine(mid_base, {main="ビシュラバII",})

    --強化
    local enhance = {
        main="麒麟棍",
        sub="ビビドストラップ",
        head="ＳＶボネット+2",
        body="アンフルローブ",
        hands="ＳＶブレーサー+2",
        legs="ＡＣパンツ+1",
        feet="ルベウスブーツ",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        back="慈悲の羽衣",
    }
    local baXX = enhance
    local regen = enhance
--stun
    local stun = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ＰＤボード+1",
        body="ヴァニアコタルディ",
        hands="アカデミブレーサー",
        legs="アートシクロップス",
        feet="ＰＤローファー+1",
        neck="エーシルトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="胡蝶のイヤリング",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    local stun_fc = set_combine(stun, {main="アパマジャII", body="アンフルローブ",})
    local stun_recast = set_combine(stun,{main="アパマジャII",})
    
--CURE
    local cure ={
        main="アーカIV",
        head="ＧＥカウビーン+1",
        body="ＧＥブリオー+1",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
    }
--弱体
    local enfeebling = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="ハゴンデスコート",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="ワイケトルク",
        waist="オヴェイトロープ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="メディアトルリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
    local renkan={
        legs="ＡＧパンツ+2",
    }
--精霊
    local element_acc={
        main= {name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="アートシクジュバ",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エディネクラス",
        waist="オティラサッシュ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="ストレンドゥリング",
        right_ring="サンゴマリング",
        back="ブックワームケープ",
    }
    local element_attk = set_combine(
          element_acc
        , {hands="ハゴンデスカフス",legs="ハゴンデスパンツ",feet="ウンバニブーツ",})
    local element_fullattk = set_combine(
          element_attk
        , {head="ＨＡハット+1",sub="ズーゾーウグリップ",neck="水影の首飾り",
           left_ear="怯懦の耳", right_ear="フリオミシピアス",ammo="ドシスタスラム",})
    local impact=set_combine(element_acc, {head=empty, body="トワイライトプリス",})
--暗黒
    local dark_acc={
        main= {name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="アートシクジュバ",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エディネクラス",
        waist="ニヌルタサッシュ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="ストレンドゥリング",
        right_ring="サンゴマリング",
        back="ブックワームケープ",
    }
    local meltdown = set_combine(dark_acc
        ,{ hands="ハゴンデスカフス",
           body="ＨＡコート+1",
           legs="ハゴンデスパンツ",
           feet="ウンバニブーツ",
           head="ＨＡハット+1",
           sub="ズーゾーウグリップ",
           neck="水影の首飾り",
           left_ear="怯懦の耳",
           right_ear="フリオミシピアス",})

--属性帯
    local obi = {}
    --所持している属性帯の属性を列挙
    obi.weathers = T{'風','土','火',}
    --所持している属性帯の装備コマンド
    obi['風']={waist="風輪の帯",}
    obi['土']={waist="土輪の帯",}
    obi['火']={waist="火輪の帯",}
    --陣のID
    obi.buffs ={}
    obi.buffs['風'] = 180 --烈風の陣
    obi.buffs['土'] = 181 --砂塵の陣
    obi.buffs['火'] = 178 --熱波の陣
--神聖
    local divine = enfeebling
--待機装備
    local idle = {
        main="アーススタッフ",
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="槌の髪飾り",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="ナレストルーズ",
        feet="ヘラルドゲートル",
        left_ear="胡蝶のイヤリング",
    }
    local idle_healing = set_combine(idle, 
        {
        main="ブンウェルスタッフ",
        feet="ケロナブーツ",
        });
    local idle_def = set_combine(idle, 
        {
        head="ＨＡハット+1",
        legs="ＨＡパンツ+1",
        feet="アートシクブーツ",
        neck="黄昏の光輪",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
        });
    
    sets.precast = {}
    sets.precast['ケアル']= pre_light
    sets.precast['スタン'] = stun
    sets.precast['連環計'] = renkan
    sets.precast['ヘイスト'] = pre_wind
    sets.precast['インパクト'] = impact
    sets.precast.FC = {}
    sets.precast.FC['光'] = pre_light
    sets.precast.FC['闇'] = pre_base
    sets.precast.FC['風'] = pre_wind
    sets.precast.FC['土'] = pre_earth
    sets.precast.FC['雷'] = pre_base
    sets.precast.FC['水'] = pre_base
    sets.precast.FC['火'] = pre_base
    sets.precast.FC['氷'] = pre_base
    sets.precast.FC['FC_LOW'] = pre_low
    sets.midcast = {}
    sets.midcast['暗黒魔法'] = dark_acc
    sets.midcast['インパクト'] = impact
    sets.midcast['強化魔法'] = enhance
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast['メルトン'] = meltdown
    sets.midcast['リジェネ'] = regen
    sets.midcast.element = {}
    sets.midcast.element.mode = '魔命'
    sets.midcast.element['魔命'] = element_acc
    sets.midcast.element['魔攻'] = element_attk
    sets.midcast.element['FULL魔攻'] = element_fullattk
    sets.midcast.RECAST = {}
    sets.midcast.RECAST['光'] =mid_light
    sets.midcast.RECAST['闇'] =mid_base
    sets.midcast.RECAST['風'] = mid_wind
    sets.midcast.RECAST['土'] = mid_earth
    sets.midcast.RECAST['雷'] = mid_base
    sets.midcast.RECAST['水'] = mid_base
    sets.midcast.RECAST['火'] = mid_base
    sets.midcast.RECAST['氷'] = mid_base
    sets.aftercast = {}
    sets.aftercast.idle = nil    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['スタン'] = stun
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip['スタンFC'] = stun_fc
    sets.equip['強化魔法'] = enhance
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['HEALING'] = idle_healing
    sets.equip.obi = obi
    
    send_command('input /macro book 6;wait .2;input /macro set 1')

end

function precast(spell)
    if ignore_spells:contains(spell.name) then return end
    --myGetProperties(spell)
    if spell.type == 'Scholar' then
        if spell.name == '疾風迅雷の章' then
            equip(sets.precast['スタン'])
        elseif spell.name == '令狸執鼠の章' then
            equip(sets.equip['強化魔法'])
        end
    elseif spell.type == 'JobAbility' then
        if spell.name == '連環計' then
            equip(sets.precast['連環計'])
        end
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 3 then
            equip(sets.precast.FC[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.name:find('レイズ') then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 3 then
                equip(sets.precast[spell.skill])
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 3 then
                    equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element],{waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.name == 'スタン' then
            if buffactive['疾風迅雷の章'] then
                equip(sets.precast['スタン'], {feet="ＰＤローファー+1",})
            else
                equip(sets.precast['スタン'])
            end
        elseif spell.name == 'オーラ' then
            equip(sets.equip['強化魔法'])
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                equip(sets.precast['インパクト'])
            elseif spell.cast_time > 8 then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC.FC_LOW)
            else
                equip(set_element(spell.element))
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' or 
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 8 then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC.FC_LOW)
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.cast_time > 3 then
            equip(sets.precast.FC[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    end
end

function midcast(spell)
    if ignore_spells:contains(spell.name) then return end
    local sets_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 3 then
            equip(sets.midcast.RECAST[spell.element])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'スタン' then
            sets_equip = sets.midcast['スタン']
        elseif spell.skill=='回復魔法' then
            if string.find(spell.name, 'ケアル') then
                sets_equip = sets.midcast['ケアル']
            elseif spell.name:find('レイズ') then
                sets_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 3 then
                windower.add_to_chat(123,'equip midcast healingmagic')
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if spell.name == 'ストンスキン' then
                sets_equip = sets.midcast['強化魔法']
                send_command('@wait 1.2;cancel 37')
            elseif spell.name:startswith('バ')
               or spell.name:startswith('エン')
               or spell.name == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.name:startswith('リジェネ') then
                sets_equip = sets.midcast['リジェネ']
            elseif  spell.cast_time > 3 then
                sets_equip = sets.midcast.RECAST[spell.element]
            end
            if buffactive['令狸執鼠の章'] then
                sets_equip = set_combine(sets_equip, {hands="ＳＶブレーサー+2",})
            end
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                sets_equip = sets.midcast['インパクト']
            elseif spell.cast_time > 3 then
                equip(set_element(spell))
            end
        elseif spell.skill=='弱体魔法' then
            if spell.cast_time > 3 then
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='暗黒魔法' then
            if spell.name == 'メルトン' then
                sets_equip = sets.midcast['メルトン']
            elseif spell.name == '虚誘掩殺の策' then
                sets_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 3 then
                sets_equip = sets.midcast[spell.skill]
            end
        else
            sets_equip = sets.midcast.RECAST[spell.element]
        end
    end
    
    if sets_equip ~= nil then
        equip(sets_equip)
    end
end

function set_element(spell_element)
    local sets_equip = nil
    if buffactive['一心精進の章'] then
        sets_equip = sets.midcast.element['魔攻']
    else
        sets_equip = sets.midcast.element[sets.midcast.element.mode]
    end
    if sets.equip.obi.weathers:contains(spell_element) then
        --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
        if world.weather_element == spell_element 
            or world.day_element == spell_element
            or buffactive[sets.equip.obi.buffs[spell_element]] then
            if sets.equip.obi[spell_element] ~= nil then
                sets_equip = set_combine(sets_equip, 
                    sets.equip.obi[spell_element])
            end
         end
    end
    return sets_equip
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
    end
    --windower.add_to_chat(123,'after cast name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
end

function status_change(new,old)
    if new == 'Resting' then
        if sets.equip.HEALING ~= nil then
            equip(sets.equip.HEALING)
         end
    elseif new == 'Idle' then
        if sets.aftercast.idle ~= nil then
            equip(sets.aftercast.idle)
         end
    end

end

function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        elseif args[1] == 'stunmode' then
            if sets.equip[args[2]] ~= nil then
                sets.precast['スタン'] = sets.equip[args[2]]
            end
        elseif args[1] == 'elementmode' then
            if args[2] == 'ACC' then
                sets.midcast.element.mode = '魔命'
            elseif args[2] == 'ATTK' then
                sets.midcast.element.mode = '魔攻'
            elseif args[2] == 'FULL' then
                sets.midcast.element.mode = 'FULL魔攻'
            end
            equip(sets.midcast.element[sets.midcast.element.mode])
        elseif args[1] == 'idle' then
            local param = args[2]:lower()
            if param == 'none' then
                sets.aftercast.idle = nil
            elseif param == 'idle' then
               windower.add_to_chat(123,'set to idle')
             sets.aftercast.idle = sets.equip.IDLE
            elseif param == 'idle_def' then
               windower.add_to_chat(123,'set to idle_def')
                sets.aftercast.idle = sets.equip.IDLE_DEF
            elseif param == 'cure' then
               windower.add_to_chat(123,'set to idle_cure')
                sets.aftercast.idle = sets.precast['ケアル']
            end
            equip(sets.aftercast.idle)
        end
    end
end

function myGetProperties(t)
    if not _settings.debug_mode then
        return
    end
    if type(t) == 'table' then
        local key,val
        for key,val in pairs(t)
        do
            if type(val) == 'string' or type(val) == 'number' then
                debug_mode_chat(' '..key..'="'..val..'"')
            elseif type(val) == 'boolean' then
                if val then
                    debug_mode_chat(' '..key..'=true')
                else
                    debug_mode_chat(' '..key..'=false')
                end
            elseif type(val) == 'table' then
                debug_mode_chat(' '..key..'={')
                myGetProperties(val)
                debug_mode_chat(' }')
            else 
                debug_mode_chat(' '..key..' is '..type(val))
            end
        end
    elseif type(t) == 'number' or type(t) == 'string' then
        debug_mode_chat(' ="'..val..'"')
    elseif type(val) == 'boolean' then
        if val then
            debug_mode_chat(' =true')
        else
            debug_mode_chat(' =false')
        end
    else
        debug_mode_chat(' type is '..type(val))
    end
end
-----------------------------------------------------------------------------------
--Name: debug_mode_chat(message)
--Desc: Checks _settings.debug_mode and outputs the message if necessary
--Args:
---- message - The debug message this is all from helper_functions.lua
-----------------------------------------------------------------------------------
--Returns:
---- none
-----------------------------------------------------------------------------------
function debug_mode_chat(message)
    if _settings.debug_mode then
        windower.add_to_chat(8,"GearSwap (Debug Mode): "..tostring(message))
    end
end
