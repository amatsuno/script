function get_sets()
    set_language('japanese')
--着替えしたくないアビ・魔法のリスト
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }  
--リキャストを監視したいアビ・魔法のリスト
    watch_recast = T{
        'スタン','ドレイン','アスピル'
    }
--待機装備
    local idle = {
        main="アーススタッフ",
        head="槌の髪飾り",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="ナレストルーズ",
        feet="ＨＡサボ+1",
        neck="黄昏の光輪",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        right_ear="胡蝶のイヤリング",
        back="チェビオットケープ",
    }
    local idle_def = set_combine(idle, 
        {
        head="ＨＡハット+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        })
    local idle_defmg = set_combine(idel_def,
        {
        head="ＨＡハット+1",
        })
    
--FC_BASE
    local pre_base ={
        head="ＡＴシャポー+1",
        body="ＶＩタバード+1",
        hands="ＧＥゲージ+1",
        legs="アートシクロップス",
        feet="ケロナブーツ",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        right_ear="エンチャンピアス+1",
        left_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }
    local pre_low = {
        head="ＡＴシャポー+1",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="ＨＡサボ+1",
    }
    
    local pre_light = set_combine(pre_base, {})
    local pre_dark  = set_combine(pre_base, {})
    local pre_earth = set_combine(pre_base, {})
    local pre_water = set_combine(pre_base, {})
    local pre_wind  = set_combine(pre_base, {main="バユバタI",})
    local pre_fire  = set_combine(pre_base, {})
    local pre_fire  = set_combine(pre_base, {})
    local pre_ice   = set_combine(pre_base, {})
    local pre_thunder = set_combine(pre_base, {})
    local mid_base = set_combine(pre_base, {feet='ＧＥガロッシュ+1',})
    local mid_light = set_combine(mid_base, {main="アーカII",})
    local mid_dark  = set_combine(mid_base, {})
    local mid_earth = set_combine(mid_base, {})
    local mid_water = set_combine(mid_base, {})
    local mid_wind  = set_combine(mid_base, {main="バユバタII",})
    local mid_fire  = set_combine(mid_base, {})
    local mid_ice   = set_combine(mid_base, {})
    local mid_thunder = set_combine(mid_base, {})
    

--強化
    local enhance = {
        head="ウムシクハット",
        neck="コロッサストルク",
        body="ＶＩタバード+1",
        hands="ＡＴグローブ+1",
        legs="アトロピタイツ",
        feet="ＥＱウゾー+2",
        back="エストクルケープ",
        waist="オリンポスサッシュ",
    }
    
    --強化延長装備（上記またはリキャスト装備との組み合わせになる。延長装備のみ）
    local enhance_expand = {
        hands="ＡＴグローブ+1",
        feet="ＥＱウゾー+2",
        back="エストクルケープ",
    }
    local enhance_compo = {
        head="ＥＱシャペル+2",
        body="ＥＱサヨン+2",
        legs="ＥＱフュゾー+2",
    }
    --強化魔法専用の詠唱短縮装備（属性ごとの短縮装備とset_combineされる)
    local pre_enhance = {waist="ジーゲルサッシュ",}
    
    local pre_stoneskin = pre_earth
    local mid_stoneskin = set_combine(enhance, {head="ウムシクハット",})
    
    local regen = set_combine(enhance, {})
    
--CURE
    local cure ={
        main="アーカIV",
        head="ＧＥカウビーン+1",
        body="ＧＥブリオー+1",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
    }
    local pre_cure = set_combine(pre_light, {})
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
        back="ゴストファイケープ",
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
    
--精霊
    local element_acc={
        main= {name="レブレイルグ+2", augments={'DMG:+10','"Mag.Atk.Bns."+26',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="アートシクジュバ",
        hands="ＨＡカフス+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        feet="アートシクブーツ",
        neck="エディネクラス",
        waist="山吹の帯",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="サンゴマリング",
        right_ring="ストレンドゥリング",
        back="ゴストファイケープ",
    }
    local element_dmg = set_combine(
        element_acc, {
            head="ＨＡハット+1",
            legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -2%','"Mag.Atk.Bns."+22',}},
            neck="水影の首飾り"})
    local pre_impact = set_combine(pre_dark, {head=empty, body="トワイライトプリス",})
    local mid_impact = set_combine(element_acc, {head=empty, body="トワイライトプリス",})
--stun
    local stun = {
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        head="ＡＴシャポー+1",
        body="ヴァニアコタルディ",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エーシルトルク",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        right_ear="サイストームピアス",
        left_ear="エンチャンピアス+1",
        left_ring="プロリクスリング",
        right_ring="ウェーザーリング",
        back="スイスケープ+1",
    }
    local stun_recast = set_combine(
    stun,{
         sub="ビビドストラップ",
         body="ＶＩタバード+1",
         hands="ＧＥゲージ+1",
        right_ear="ロケイシャスピアス",
    })
    --コンバート
    local convert = {
        main="アーカIV",
        sub="エルダーグリップ+1",
        head="ＧＥカウビーン+1",
        body="アートシクジュバ",
        hands="オトミグローブ",
        legs="アトロピタイツ",
        feet="ＨＡサボ+1",
        neck="オルンミラトルク",
        waist="山吹の帯",
        right_ear="ロケイシャスピアス",
    }
    
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
    sets.precast['ケアル']= pre_cure
    sets.precast['スタン'] = stun
    sets.precast['ヘイスト'] = pre_wind
    sets.precast['ストンスキン'] = pre_stoneskin
    sets.precast['スリプル'] = pre_sleep
    sets.precast.JA = {}
    sets.precast.JA['コンバート'] = convert
    sets.precast.FC = {}
    sets.precast.FC['FC_LOW'] = pre_low
    sets.precast.FC['光'] = pre_light
    sets.precast.FC['闇'] = pre_dark
    sets.precast.FC['風'] = pre_wind
    sets.precast.FC['土'] = pre_earth
    sets.precast.FC['雷'] = pre_thunder
    sets.precast.FC['水'] = pre_water
    sets.precast.FC['火'] = pre_fire
    sets.precast.FC['氷'] = pre_ice
    sets.precast['インパクト'] = pre_impact
    sets.precast.FC.enhance = pre_enhance
    sets.midcast = {}
    sets.midcast['強化魔法'] = enhance
    sets.midcast['強化魔法延長'] = enhance_expand
    sets.midcast['コンポージャー'] = enhance_compo
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['精霊魔法'] = element_acc
    sets.midcast['リジェネ'] = regen
    sets.midcast['ケアル'] = cure
    sets.midcast['スタン'] = stun
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast['ストンスキン'] = mid_stoneskin
    sets.midcast['インパクト'] = mid_impact
    sets.midcast.RECAST = {}
    sets.midcast.RECAST['光'] = mid_light
    sets.midcast.RECAST['闇'] = mid_dark
    sets.midcast.RECAST['風'] = mid_wind
    sets.midcast.RECAST['土'] = mid_earth
    sets.midcast.RECAST['雷'] = mid_thunder
    sets.midcast.RECAST['水'] = mid_water
    sets.midcast.RECAST['火'] = mid_fire
    sets.midcast.RECAST['氷'] = mid_ice
    sets.aftercast = {}
    sets.aftercast.skip = false
    sets.aftercast.idle = nil    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['IDLE_DEFMG'] = idle_defmg
    sets.equip['スタン'] = stun
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip.element = {}
    sets.equip.element['ACC'] = element_acc
    sets.equip.element['DMG'] = element_dmg
    sets.equip.obi = obi
    --マクロブック、セット変更
    send_command('input /macro book 3;wait .2;input /macro set 1')
    --キーバインド設定
    bindKeys(true)

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^. gs c stunmode')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
        send_command('bind ^q gs c compo')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^y')
        send_command('unbind ^,')
        send_command('unbind ^.')
        send_command('unbind ^/')
        send_command('unbind ^[')
        send_command('unbind ^]')
        send_command('unbind ^q')
    end
end
function file_unload()
    bindKeys(false)
end

function precast(spell)
    --myGetProperties(spell,'splell', 0)
    local set_equip = nil

    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
        if sets.precast.JA[spell.name] ~= nil then
            set_equip = sets.precast.JA[spell.name]
        end
    elseif spell.type == 'BardSong' then
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 0.75 then
            set_equip = sets.precast.FC.magic[spell.element]
        else
            set_equip = sets.midcast.RECAST[spell.element]
        end
        cancel_buff(spell)
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                if convert_flag then
                    set_equip = nil
                else
                    set_equip = sets.precast['ケアル']
                end
            elseif spell.name:find('レイズ') then
                set_equip = sets.precast.FC[spell.element]
            elseif spell.cast_time > 0.75 then
                set_equip = sets.precast[spell.skill]
            else
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 2 then
                    set_equip = set_combine(sets.precast.FC[spell.element], sets.precast.FC.enhance)
                elseif spell.cast_time > 0.75 then
                    set_equip = ssets.precast.FC['FC_LOW']
                else
                    set_equip = set_enhance(spell)
                end
            elseif spell.name == 'ストンスキン' then
                set_equip = set_combine(sets.precast['ストンスキン'], sets.precast.FC.enhance)
                send_command('@wait 1.2;cancel 37')
            elseif spell.cast_time > 0.75 then
                set_equip = sets.precast.FC[spell.element]
            else
                set_equip = sets.midcast.RECAST[spell.element]
            end
            cancel_buff(spell)
        elseif spell.name == 'スタン' then
            add_to_chat(123,'spell.name=スタン')
            set_equip = sets.precast['スタン']
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                set_equip = sets.precast['インパクト']
            elseif spell.cast_time > 2 then
                set_equip = sets.precast.FC[spell.element]
            elseif spell.cast_time > 0.75 then
                set_equip = sets.precast.FC.FC_LOW
            else
                set_equip = set_element(spell)
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' or 
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 0.75 then
                set_equip = sets.precast.FC[spell.element]
            else
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.cast_time > 0.75 then
            set_equip = sets.precast.FC[spell.element]
        else
            set_equip = sets.midcast.RECAST[spell.element]
        end
    end
    if set_equip ~= nil then
        equip(set_equip)
    end
    
end

function midcast(spell)
    myGetProperties(spell,'splell', 0)
    if ignore_spells:contains(spell.name) then return end
    local set_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'BardSong' then
        if buffactive['ナイチンゲール'] then
            --何もしない
        else
            set_equip = set_song(spell)
        end
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 0.75 then
            set_equip = sets.midcast.RECAST[spell.element]
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'スタン' then
            set_equip = sets.midcast['スタン']
        elseif spell.skill=='回復魔法' then
            if string.find(spell.name, 'ケアル') then
                if convert_flag then
                    set_equip = nil
                else
                set_equip = sets.midcast['ケアル']
                end
            elseif spell.name:find('レイズ') then
                set_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 0.75 then
                windower.add_to_chat(123,'equip midcast healingmagic')
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if  spell.cast_time > 0.75 then
                set_equip = set_enhance(spell)
            end
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                set_equip = sets.midcast['インパクト']
            elseif spell.cast_time > 0.75 then
                set_equip = set_element(spell)
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' then
            if spell.cast_time > 0.75 then
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='暗黒魔法' then
            if spell.name == 'メルトン' then
                set_equip = sets.midcast['メルトン']
            elseif spell.name == '虚誘掩殺の策' then
                set_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 0.75 then
                set_equip = sets.midcast[spell.skill]
            end
        else
            set_equip = sets.midcast.RECAST[spell.element]
        end
    end
    
    if set_equip ~= nil then
        equip(set_equip)
    end
end

function set_element(spell)
    local set_equip = nil
    set_equip = sets.midcast['精霊魔法']
    
    if sets.equip.obi.weathers:contains(spell.element) then
        --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
        if world.weather_element == spell.element 
            or world.day_element == spell.element
            or buffactive[sets.equip.obi.buffs[spell.element]] then
            if sets.equip.obi[spell.element] ~= nil then
                set_equip = set_combine(set_equip, 
                    sets.equip.obi[spell.element])
            end
         end
    end
    return set_equip
end
function set_enhance(spell)

    local set_equip = nil
    if spell.name == 'ストンスキン' then
        add_to_chat(123,'ストンスキン')
        --延長装備判定しない
        return sets.midcast['ストンスキン']
    elseif spell.name:startswith('リジェネ') then
        add_to_chat(123,'リジェネ')
        sets_equip = set_combine(sets.midcast['リジェネ'], sets.midcast['強化魔法延長'])
    elseif spell.name:startswith('ファランクス') or
      spell.name:startswith('エン') or
      spell.name:startswith('バ') then
        --延長装備判定しない
        set_equip = sets.midcast['強化魔法']
        return set_equip
    else
        set_equip = set_combine(sets.midcast.RECAST[spell.element], sets.midcast['強化魔法延長'])
    end
    --if buffactive['コンポージャー'] then
        add_to_chat(8, 'tgtype='..tostring(spell.target.type))
    --end
    if buffactive['コンポージャー'] and
      spell.target.type and 
      spell.target.type == 'PLAYER' then
        set_equip = set_combine(set_equip, sets.midcast['コンポージャー'])
    end
    return set_equip
end
function set_song(spell)
    local set_equip = nil
    set_equip = sets.midcast.RECAST[spell.element]
    return set_equip
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil and not sets.aftercast.skip then
      equip(sets.aftercast.idle)
    end
    
    if spell.name == 'コンバート' then
        convert_flag = true
    else
        convert_flag = false
    end
    sets.aftercast.skip = false
    --myGetProperties(spell,'splell', 0)
    if watch_recast:contains(spell.name) and not spell.interrupted then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
end

function calculate_duration(spell)
    local mult = 1.0
    if spell.type == 'Geomancy' then
        if player.equipment.legs == 'バグアパンツ' then  
            mult = mult + 0.12
        elseif player.equipment.legs == 'ＢＡパンツ+1' then 
            mult = mult + 0.15 
        end
        if player.equipment.back == '龍脈の外套' then
            mult = mult + 0.13
        end
        return mult*180
    else
        if buffactive['コンポージャー'] then
        end
        
        return spell.duration
    end
end

function status_change(new,old)
end
function showrecast(spellid, spellname)
    local recast = windower.ffxi.get_spell_recasts()
    windower.add_to_chat(123,'recast::'..spellname..'('..spellid..')='..recast[spellid] / 60)
    my_send_command('@wait '..tostring(recast[spellid] / 60)..';input /echo '..spellname..'詠唱可能')
end

function self_command(command)
    local args = command:split(' ')
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
                elseif param == 'idle_mg' then
                    windower.add_to_chat(123,'魔法カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEFMG
                elseif param == 'cure' then
                   windower.add_to_chat(123,'set to idle_cure')
                    sets.aftercast.idle = sets.precast['ケアル']
                end
                equip(sets.aftercast.idle)
            end
        elseif args[1] == 'stunmode' then
            if #args == 1 then
                if sets.precast['スタン'] == sets.equip['スタン'] then
                    windower.add_to_chat(123,'スタン：リキャスト')
                    sets.precast['スタン'] = sets.equip['スタンリキャ']
                    sets.midcast['スタン'] = sets.equip['スタンリキャ']
                else
                    windower.add_to_chat(123,'スタン：魔命')
                    sets.precast['スタン'] = sets.equip['スタン'] 
                    sets.midcast['スタン'] = sets.equip['スタン'] 
                end
            else
                if sets.equip[args[2]] ~= nil then
                    windower.add_to_chat(123,'スタン：'..args[2])
                    sets.precast['スタン'] = sets.equip[args[2]]
                end
            end
        elseif args[1] == 'elementmode' then
            if #args == 1 then
                if sets.midcast['精霊魔法'] == sets.equip.element['ACC'] then
                    windower.add_to_chat(123,'精霊：魔攻')
                    sets.midcast['精霊魔法'] = sets.equip.element['DMG'] 
                else
                    windower.add_to_chat(123,'精霊：魔命')
                    sets.midcast['精霊魔法'] = sets.equip.element['ACC'] 
                end
            else
                if args[2] == 'ACC' then
                    windower.add_to_chat(123,'精霊：魔命')
                    sets.midcast['精霊魔法'] = sets.equip.element['ACC'] 
                elseif args[2] == 'ATTK' or args[2] == 'FULL' then
                    windower.add_to_chat(123,'精霊：魔攻')
                    sets.midcast['精霊魔法'] = sets.equip.element['DMG'] 
                end
                equip(sets.midcast['精霊魔法'])
            end
        elseif args[1] == 'compo' then
            if buffactive['コンポージャー'] then
                windower.ffxi.cancel_buff(419)
            else
                my_send_command('input /ja コンポージャー <me>')
            end
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
        elseif args[1] == 'assist' then
            add_to_chat(123, 'send @others /ta '..player.target.id)
            my_send_command('send @others /ta '..player.target.id)
        end
    end
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        elseif args[1] == 'recast' then
            local spellid = tonumber(args[2])
            local spellname = " "
            if #args[1] >= 3 then
                spellname = args[3]
            end
            showrecast(spellid, spellname)
        end
    end
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
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
include('lib/counter.lua')