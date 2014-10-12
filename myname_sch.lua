function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
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
        neck="黄昏の光輪",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        right_ear="胡蝶のイヤリング",
        back="チェビオットケープ",
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
        feet="ＨＡサボ+1",
        });

--FC_BASE
    local pre_base ={
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="アンフルローブ",
        hands="ＧＥゲージ+1",
        legs="アートシクロップス",
        feet="ＰＤローファー+1",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        right_ear="エンチャンピアス+1",
        left_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ+1",
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
    local pre_stoneskin = set_combine(pre_earth, {head="ウムシクハット",aist="ジーゲルサッシュ",})
    --強化
    local enhance = set_combine(idle_def, {
        main="麒麟棍",
        sub="ビビドストラップ",
        head="ウムシクハット",
        body="ＰＤガウン+1",
        legs="ＡＣパンツ+1",
        feet="ルベウスブーツ",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        back="慈悲の羽衣",
    })
    local baXX = enhance
    local regen = set_combine(enhance, {head="ＳＶボネット+2",})
    local stoneskin = set_combine(enhance, {waist="ジーゲルサッシュ",})
--stun
    local stun = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ＰＤボード+1",
        body="ヴァニアコタルディ",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="ＰＤローファー+1",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ+1",
    }
    local stun_fc = set_combine(stun, {body="アンフルローブ",hands="ＧＥゲージ+1",})
    local stun_recast = set_combine(stun,{hands="ＧＥゲージ+1",})
    
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
        waist="山吹の帯",
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
    sets.precast.FC['ストンスキン'] = pre_stoneskin
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
    sets.midcast['ストンスキン']=stoneskin
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
    sets.equip.treasure = false
    sets.equip.treasure_spells = T{'ストーン'}
    sets.equip['スタン'] = stun
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip['スタンFC'] = stun_fc
    sets.equip['強化魔法'] = enhance
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['HEALING'] = idle_healing
    sets.equip.obi = obi
    
    send_command('input /macro book 6;wait .2;input /macro set 1')

    bindKeys(true)    
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^y gs c treasure')
        send_command('bind ^, gs c idle')
        send_command('bind ^. gs c stunmode')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^y')
        send_command('unbind ^,')
        send_command('unbind ^.')
        send_command('unbind ^/')
        send_command('unbind ^[')
        send_command('unbind ^]')
    end
end
function file_unload()
    bindKeys(false)
end

function precast(spell)
    if ignore_spells:contains(spell.name) then return end
    --myGetProperties(spell,'spell',0)
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
            elseif spell.name == 'ストンスキン' then
                equip(sets.precast.FC['ストンスキン'])
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
                equip(set_element(spell))
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
                sets_equip = sets.midcast['ストンスキン']
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

function set_element(spell)
    local sets_equip = nil
    if buffactive['一心精進の章'] then
        sets_equip = sets.midcast.element['魔攻']
    else
        sets_equip = sets.midcast.element[sets.midcast.element.mode]
    end
    if sets.equip.obi.weathers:contains(spell.element) then
        windower.add_to_chat(123,'属性OK')
        --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
        if world.weather_element == spell.element 
            or world.day_element == spell.element
            or buffactive[sets.equip.obi.buffs[spell.element]] then
            if sets.equip.obi[spell.element] ~= nil then
                windower.add_to_chat(123,'帯使用'..spell.element)
                sets_equip = set_combine(sets_equip, 
                    sets.equip.obi[spell.element])
            end
         end
    end
    if sets.equip.treasure 
        and sets.equip.treasure_spells:contains(spell.name) then
        sets_equip = set_combine(sets_equip, {waist="チャークベルト"})
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
        if player.mpp < 70 and
           sets.equip.HEALING ~= nil then
            equip(sets.equip.HEALING)
         end
    elseif new == 'Idle' then
        if sets.aftercast.idle ~= nil then
            equip(sets.aftercast.idle)
         end
    end

end
function buff_change(buff, gain)
    if buff == 'レイヴシンボル' then
        if gain then
            windower.add_to_chat(123,'オートリレズON')
            equip({neck='レフジネックレス+1',})
            disable('neck')
        else
            windower.add_to_chat(8,'オートリレズOFF')
            enable('neck')
        end
    end
end
function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if #args >= 1 then
        if args[1] == 'treasure' then
            if sets.equip.treasure then
                sets.equip.treasure = false
                windower.add_to_chat(8,tostring('トレハンOFF'))
            else
                sets.equip.treasure = true
                windower.add_to_chat(8,tostring('トレハンON'))
            end
        elseif args[1] == 'lock' then
            if #args >= 2 then
                windower.add_to_chat(123,'lock '..args[2])
                disable(args[2])
            else
                windower.add_to_chat(123,'lock')
                disable('main','sub','ammo','range')
            end
        elseif args[1] == 'unlock' then
            if #args >= 2 then
                windower.add_to_chat(123,'unlock '..args[2])
                enable(args[2])
            else
                windower.add_to_chat(123,'unlock')
                enable('main','sub','ammo','range')
            end
        elseif args[1] == 'stunmode' then
            if #args == 1 then
                if sets.precast['スタン'] == sets.equip['スタン'] then
                    windower.add_to_chat(123,'スタン：リキャスト')
                    sets.precast['スタン'] = sets.equip['スタンリキャ']
                elseif sets.precast['スタン'] == sets.equip['スタンリキャ'] then
                    windower.add_to_chat(123,'スタン：FC')
                    sets.precast['スタン'] = sets.equip['スタンFC']
                else
                    windower.add_to_chat(123,'スタン：魔命')
                    sets.precast['スタン'] = sets.equip['スタン'] 
                end
            else
                if sets.equip[args[2]] ~= nil then
                    windower.add_to_chat(123,'スタン：'..args[2])
                    sets.precast['スタン'] = sets.equip[args[2]]
                end
            end
        elseif args[1] == 'elementmode' then
            if #args == 1 then
                if sets.midcast.element.mode == '魔命' then
                    windower.add_to_chat(123,'精霊：魔攻')
                    sets.midcast.element.mode = '魔攻'
                elseif sets.midcast.element.mode == '魔攻' then
                    windower.add_to_chat(123,'精霊：FULL魔攻')
                    sets.midcast.element.mode = 'FULL魔攻'
                else
                    windower.add_to_chat(123,'精霊：魔命')
                    sets.midcast.element.mode = '魔命'
                end
            else
                if args[2] == 'ACC' then
                    sets.midcast.element.mode = '魔命'
                elseif args[2] == 'ATTK' then
                    sets.midcast.element.mode = '魔攻'
                elseif args[2] == 'FULL' then
                    sets.midcast.element.mode = 'FULL魔攻'
                end
                equip(sets.midcast.element[sets.midcast.element.mode])
            end
        elseif args[1] == 'idle' then
            if #args == 1 then
                if sets.aftercast.idle == nil then
                    windower.add_to_chat(123,'リフレ装備待機')
                    sets.aftercast.idle = sets.equip.IDLE
                elseif sets.aftercast.idle == sets.equip.IDLE then
                    windower.add_to_chat(123,'カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEF
                elseif sets.aftercast.idle == sets.equip.IDLE_DEF then
                    windower.add_to_chat(123,'スタン装備待機')
                    sets.aftercast.idle = sets.equip['スタン']
                else
                    windower.add_to_chat(123,'着替え待機なし')
                    sets.aftercast.idle = nil
                end
            else
                local param = args[2]:lower()
                if param == 'none' then
                    windower.add_to_chat(123,'着替え待機なし')
                    sets.aftercast.idle = nil
                elseif param == 'idle' then
                    windower.add_to_chat(123,'リフレ装備待機')
                    sets.aftercast.idle = sets.equip.IDLE
                elseif param == 'idle_def' then
                    windower.add_to_chat(123,'カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEF
                elseif param == 'cure' then
                   windower.add_to_chat(123,'set to idle_cure')
                    sets.aftercast.idle = sets.precast['ケアル']
                end
                equip(sets.aftercast.idle)
            end
        end
    end
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        end
    end
end
indent='                                                                         '
function myGetProperties(t,comment,level)
    if type(t) == 'table' then
        local spaces=string.sub(indent,1,level)
        local spaces2=string.sub(indent,1,level+1)
        local key,val
        add_to_chat(123, spaces..comment..'={')
        for key,val in pairs(t)
        do
            if type(val) == 'string' or type(val) == 'number' then
                add_to_chat(123,spaces2..key..'="'..val..'"')
            elseif type(val) == 'boolean' then
                add_to_chat(123,spaces2..key..'='..tostring(val))
            elseif type(val) == 'table' then
                myGetProperties(val, key,level+1)
            else 
                add_to_chat(123,space2..key..' is '..type(val))
            end
        end
        add_to_chat(123,spaces..'}--end of'..comment)
    elseif type(t) == 'number' or type(t) == 'string' then
        add_to_chat(123,spaces..comment..' ="'..val..'"')
    elseif type(val) == 'boolean' then
        add_to_chat(123,spaces..comment..' ='..tostring(val))
    else
        add_to_chat(123,spaces..comment..' type is '..type(val))
    end
end
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
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
