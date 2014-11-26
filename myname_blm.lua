function get_sets()
    set_language('japanese')
    ancient_spells = T{
        'トルネド','フリーズ','フレア','フラッド','バースト','クエイク',
        'トルネドII','フリーズII','フレアII','フラッドII','バーストII','クエイクII',
    }
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
--FC_BASE
    local pre_base ={
        main= {name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}},
        sub="ビビドストラップ",
        head="ナティラハット",
        body="アンフルローブ",
        legs="アートシクロップス",
        feet="ケロナブーツ",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        neck="オルンミラトルク",
        left_ring="プロリクスリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }
    local pre_low = {
        head="ナティラハット",
        legs="アートシクロップス",
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
    local pre_stoneskin = set_combine(pre_earth,{head="ウムシクハット",waist="ジーゲルサッシュ",})

    --強化
    local enhance = {
        main="麒麟棍",
        sub="ビビドストラップ",
        head="ウムシクハト",
        body="アンフルローブ",
        feet="ルベウスブーツ",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        back="慈悲の羽衣",
    }
    local baXX = enhance
    local stoneskin = set_combine(enhance, {waist="ジーゲルサッシュ",})
    
--stun
    local stun = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        head="ナティラハット",
        body="ヴァニアコタルディ",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エーシルトルク",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        right_ear="ロケイシャスピアス",
        left_ear="エンチャンピアス+1",
        left_ring="プロリクスリング",
        right_ring="ウェーザーリング",
        back="スイスケープ+1",
    }
    local stun_fc = set_combine(stun, {main="アパマジャII", body="アンフルローブ",})
    local stun_recast = set_combine(stun,{main="アパマジャII",})
    
--CURE
    local cure ={
        main="アーカIV",
        hands="ボクワスグローブ",
        legs="ナレストルーズ",
    }
--弱体
    local enfeebling = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="イスキミアシャブル",
        hands="ＨＡカフス+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        feet="アートシクブーツ",
        neck="ワイケトルク",
        waist="オヴェイトロープ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="ベーンケープ",
    }
    local pre_sleep ={
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="ナティラハット",
        hands="ＨＡカフス+1",
        body="ヴァニアコタルディ",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        waist="オヴェイトロープ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        neck="オルンミラトルク",
        left_ring="サンゴマリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }

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
        neck="エーシルトルク",
        waist="オヴェイトロープ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="サンゴマリング",
        right_ring="ストレンドゥリング",
        back="慈悲の羽衣",
    }
    
--精霊
    local element_acc={
    main= {name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}},
    sub="メフィテスグリップ",
    range="オウレオール",
    head="ＡＲペタソス+1",
    body="ＳＰコート+1",
    hands="ＨＡカフス+1",
    legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
    feet="ＡＲサボ+1",
    neck="エディネクラス",
    waist="山吹の帯",
    left_ear="怯懦の耳",
    right_ear="フリオミシピアス",
    left_ring="サンゴマリング",
    right_ring="ストレンドゥリング",
    back="トーロケープ",
    }
    local element_attk = set_combine(
          element_acc
        , {hands="ハゴンデスカフス",feet="ウンバニブーツ",})
    local element_fullattk = set_combine(
          element_attk
        , { head={ name="ＨＡハット+1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Mag.Atk.Bns."+25',}},
            legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+21',}},
            sub="エルダーグリップ+1",neck="水影の首飾り",
            range=empty,ammo="オンブルタスラム+1",
            left_ring="女王の指輪",})

    local impact=set_combine(element_acc, {head=empty, body="トワイライトプリス",})

--神聖
    local divine = enfeebling

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
--待機装備
    local idle = {
        main="アーススタッフ",
        sub="ビビドストラップ",
        head="槌の髪飾り",
        body="ＨＡコート+1",
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
        hands="ＨＡカフス+1",
        body="ＨＡコート+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','"Mag.Atk.Bns."+21',}},
        feet="ＨＡサボ+1",
        neck="黄昏の光輪",
        right_ear="驕慢の耳",
        left_ear="胡蝶のイヤリング",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
        });
--MP装備
    local equip_mp = {
        head="ナティラハット",
        body="アートシクジュバ",
        hands="オトミグローブ",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エディネクラス",
        waist="ニヌルタサッシュ",
        left_ear="胡蝶のイヤリング",
        right_ear="ロケイシャスピアス",
        left_ring="サンゴマリング",
        right_ring="ビフロストリング",
        back="ベーンケープ",
    }
    sets.ws = {}
    sets.ws['ミルキル'] = equip_mp
    sets.precast = {}
    sets.precast['ケアル']= pre_light
    sets.precast['スタン'] = stun
    sets.precast['ヘイスト'] = pre_wind
    sets.precast['ストンスキン'] = pre_stoneskin
    sets.precast['インパクト'] = impact
    sets.precast['スリプル'] = pre_sleep
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
    sets.midcast['インパクト'] = impact
    sets.midcast['強化魔法'] = enhance
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['スリプル'] = enfeebling
    sets.midcast['暗黒魔法'] = dark_acc
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast['ストンスキン'] = stoneskin
    sets.midcast.element = {}
    sets.midcast.element.mode = 'ACC'
    sets.midcast.element['古代'] = element_acc
    sets.midcast.element['ACC'] = element_acc
    sets.midcast.element['ATTK'] = element_attk
    sets.midcast.element['FULL'] = element_fullattk
    sets.midcast.element['VW'] = pre_base
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
    sets.equip.treasure_spells = T{'ストンガ'}
    sets.equip['スタン'] = stun
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip['スタンFC'] = stun_fc
    sets.equip['強化魔法'] = enhance
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip.obi = obi
    sets.equip['HEALING'] = idle_healing
    sets.equip['スリプル'] = {}
    sets.equip['スリプル'].precast = pre_sleep
    --enable('main','sub','ammo')
    rev_attk = { name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}}

    send_command('input /macro book 4;wait .2;input /macro set 10')
    bindKeys(true)    

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
    
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^y gs c treasure')
        send_command('bind ^, gs c idle')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^y')
        send_command('unbind ^,')
        send_command('unbind ^/')
        send_command('unbind ^[')
        send_command('unbind ^]')
    end
end
function file_unload()
    bindKeys(false)
end

function precast(spell)
    myGetProperties(spell,'spell',0)
    if ignore_spells:contains(spell.ja) then return end
    if spell.type == 'JobAbility' then
    elseif spell.type=="WeaponSkill" then
        if sets.ws[spell.ja] then
            equip(sets.ws[spell.ja])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        add_to_chat(123,'name='..spell.ja..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.ja, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.ja:find('レイズ') then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 3 then
                equip(sets.precast[spell.skill])
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.skill=='強化魔法' then
            if spell.ja:startswith('バ') then
                if spell.cast_time > 3 then
                    equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.ja == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
                add_to_chat(123, 'cancel stoneskin')
                send_command('@wait 1.2;cancel 37')
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.ja == 'スタン' then
            equip(sets.precast['スタン'])
        elseif spell.skill=='精霊魔法' then
            if spell.ja == 'インパクト' then
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
            if spell.ja:startswith('スリプ') or spell.ja == 'ブレクガ' then
                equip(sets.precast['スリプル'])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element])
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
    if ignore_spells:contains(spell.ja) then return end
    local sets_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.ja == 'スタン' then
            sets_equip = sets.midcast['スタン']
        elseif spell.skill=='回復魔法' then
            if string.find(spell.ja, 'ケアル') then
                sets_equip = sets.midcast['ケアル']
            elseif spell.ja:find('レイズ') then
                sets_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 3 then
                --windower.add_to_chat(123,'equip midcast healingmagic')
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if string.startswith(spell.ja, 'バ')
               or spell.ja == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.ja == 'ストンスキン' then
                sets_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 3 then
                sets_equip = sets.midcast.RECAST[spell.element]
            end
        elseif spell.skill=='精霊魔法' then
            if spell.ja == 'インパクト' then
                equip(sets.midcast['インパクト'])
            elseif spell.cast_time > 3 then
                equip(set_element(spell))
            end
        elseif spell.skill=='神聖魔法' or
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 3 then
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='弱体魔法' then
            if spell.ja:startswith('スリプ') or spell.ja == 'ブレクガ' then
                sets_equip = sets.midcast['スリプル']
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
    
    if sets.midcast.element.mode ~= 'VW' then
        if ancient_spells:contains(spell.ja) then
            sets_equip = sets.midcast.element['古代']
        elseif buffactive['精霊の印'] or buffactive['サテルソーサリー'] then
            sets_equip = sets.midcast.element['ATTK']
        else
            sets_equip = sets.midcast.element[sets.midcast.element.mode]
        end
        if buffactive['魔力の雫'] or buffactive['魔力の泉'] then
            sets_equip = set_combine(sets_equip, {body='ヴァニアコタルディ'})
        end
        if sets.equip.obi.weathers:contains(spell.element) then
            --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
            if world.weather_element == spell.element 
                or world.day_element == spell_element
                or buffactive[sets.equip.obi.buffs[spell.element]] then
                if sets.equip.obi[spell.element] ~= nil then
                    sets_equip = set_combine(sets_equip, 
                        sets.equip.obi[spell.element])
                end
             end
        end
    end
    if sets.equip.treasure 
        and sets.equip.treasure_spells:contains(spell.ja) then
        sets_equip = set_combine(sets_equip, {waist="チャークベルト"})
    end
    return sets_equip
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
    end
    if spell.ja == 'スリプガII' and not spell.interrupted then
        my_send_command('@wait 35;input /echo -----35秒経過------------------;wait 40;input /echo -----75秒経過----------------')
    end
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

function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
            if #args == 1 then
                windower.add_to_chat(123,'lock')
                disable('main','sub','ammo','range')
            else
                windower.add_to_chat(123,'lock '..args[2])
                disable(args[2])
            end
        elseif args[1] == 'unlock' then
            if #args == 1 then
                windower.add_to_chat(123,'unlock')
                enable('main','sub','ammo','range')
            else
                windower.add_to_chat(123,'unlock '..args[2])
                enable(args[2])
            end
        elseif args[1] == 'elementmode' then
            if #args == 1 then
                if sets.midcast.element.mode == 'ACC' then
                    windower.add_to_chat(123,'精霊：魔攻')
                    sets.midcast.element.mode = 'ATTK'
                    sets.midcast['神聖魔法'] = sets.midcast.element['ATTK']
                    sets.precast['スリプル'] = sets.equip['スリプル'].precast
                elseif sets.midcast.element.mode == 'ATTK' then
                    windower.add_to_chat(123,'精霊：FULL魔攻')
                    sets.midcast.element.mode = 'FULL'
                    sets.midcast['神聖魔法'] = sets.midcast.element['FULL']
                    sets.precast['スリプル'] = sets.equip['スリプル'].precast
                else
                    windower.add_to_chat(123,'精霊：魔命')
                    sets.midcast.element.mode = 'ACC'
                    sets.midcast['神聖魔法'] = enfeebling
                    sets.precast['スリプル'] = sets.midcast['スリプル']
                end
            else
                if args[2] == 'ACC' then
                    sets.midcast.element.mode = 'ACC'
                    sets.midcast['神聖魔法'] = enfeebling
                    sets.precast['スリプル'] = sets.midcast['スリプル']
                elseif args[2] == 'ATTK' then
                    sets.midcast.element.mode = 'ATTK'
                    sets.midcast['神聖魔法'] = sets.midcast.element['ATTK']
                    sets.precast['スリプル'] = sets.equip['スリプル'].precast
                elseif args[2] == 'FULL' then
                    sets.midcast.element.mode = 'FULL'
                    sets.midcast['神聖魔法'] = sets.midcast.element['FULL']
                    sets.precast['スリプル'] = sets.equip['スリプル'].precast
                elseif args[2] == 'VW' then
                    windower.add_to_chat(123,'精霊：VW')
                    sets.midcast.element.mode = 'VW'
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
        elseif args[1] == 'treasure' then
            if sets.equip.treasure then
                sets.equip.treasure = false
                windower.add_to_chat(8,tostring('トレハンOFF'))
            else
                sets.equip.treasure = true
                windower.add_to_chat(8,tostring('トレハンON'))
            end
        elseif args[1] == 'refresh' then
            refresh_equip()
        elseif args[1] == 'jb' then
            if sets.equip.IDLE_DEF.back == 'メシストピンマント' then
                windower.add_to_chat(123, '待機:背中＝チェビオットケープ')
                sets.equip.IDLE_DEF.back = 'チェビオットケープ'
            else
                windower.add_to_chat(123, '待機:背中＝メシストピンマント')
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
            end
        elseif args[1] == 'move' then
            equip(set_move(sets.aftercast.idle))
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
function refresh_equip()
end

indent='\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t'
function myGetProperties(t,comment,level)
    if not _settings.debug_mode then return end
    if type(t) == 'table' then
        local spaces=string.sub(indent,1,level)
        local spaces2=string.sub(indent,1,level+1)
        local key,val
        local f,err
        f, err = debugf:append(spaces..comment..'={\n')
        if not f then
            add_to_chat(123, 'file.append error '..err)
        end
        for key,val in pairs(t)
        do
            if type(val) == 'string' or type(val) == 'number' then
               debugf:append(spaces2..key..'="'..val..'"\n')
            elseif type(val) == 'boolean' then
                debugf:append(spaces2..key..'='..tostring(val)..'\n')
            elseif type(val) == 'table' then
                myGetProperties(val, key,level+1)
            else 
                debugf:append(space2..key..' is '..type(val)..'\n')
            end
        end
        debugf:append(spaces..'}--end of '..comment..'\n')
    elseif type(t) == 'number' or type(t) == 'string' then
        debugf:append(spaces..comment..' ="'..val..'"\n')
    elseif type(val) == 'boolean' then
        debugf:append(spaces..comment..' ='..tostring(val)..'\n')
    else
        debugf:append(spaces..comment..' type is '..type(val)..'\n')
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

windower.register_event('zone change',function (...)
    my_send_command('@wait 10;gs c refresh')
end)
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
        windower.add_to_chat(8,"GearSwap (Debug Mode): "..
            tostring(message))
    end
end
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')

