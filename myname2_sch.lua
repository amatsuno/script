function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
    reiv_neck='レフジネックレス+1'
    
--リキャストを監視したいアビ・魔法のリスト
    watch_recast = T{
        'スタン','ドレイン','アスピル'
    }
--FC_BASE
    local pre_base ={
        ammo="インカントストーン",
        head="ナティラハット",
        body="アンフルローブ",
        hands="ゲンデサゲージ",
        legs="ＯＶパンツ+1",
        feet="ペダゴギローファー",
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
    local mid_light = mid_base
    local pre_healing = pre_light
    
    --風属性
    local pre_wind = pre_base
    local mid_wind = mid_base

    --土属性
    local pre_earth = pre_base 
    local mid_earth = mid_base

    local pre_thunder = set_combine(pre_base, {main="アパマジャI",})
    local mid_thunder = mid_base
    --強化
    local enhance = {
        main="麒麟棍",
        sub="フルキオグリップ",
        ammo="サバントテーシス",
        head="ＳＶボネット+2",
        body="アンフルローブ",
        hands="ＳＶブレーサー+2",
        legs="スカラーパンツ",
        feet="リーガルパンプス+1",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        
        back="慈悲の羽衣",
    }
    local baXX = enhance
--stun
    local stun = {
        main="レブレイルグ+2",
        sub="アルブダグリップ",
        ammo="ヘイスティピニオン",
        head="ペダゴギボード",
        body="ヘデラコタルディ",
        hands="オトミグローブ",
        legs="アートシクロップス",
        feet="ペダゴギローファー",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="胡蝶のイヤリング",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    local stun_fc = set_combine(stun, {body="アンフルローブ",})
    local stun_recast = set_combine(stun, {hands="ゲンデサゲージ",})
    
--CURE
    local cure ={
        main="タマシチ",
        sub="ソーズシールド",
        head="ゲンデサカウビーン",
        body="ゲンデサブリオー",
        hands="ボクワスグローブ",
    }
--弱体
    local enfeebling = {
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        range="オウレオール",
        head="ナティラハット",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="ボクワスブーツ",
        neck="インフィブルトルク",
        waist="デモンリーサッシュ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="バルラーンリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
    local renkan={
        legs="ＡＧパンツ+2",
    }
--精霊
    local element_acc={
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        range="オウレオール",
        head="ナティラハット",
        body="ＨＡコート+1",
        hands="オトミグローブ",
        legs="アートシクロップス",
        feet="ハゴンデスサボ",
        neck="エディネクラス",
        waist="山吹の帯",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="バルラーンリング",
        right_ring="サンゴマリング",
        back="ブックワームケープ",
    }
    local element_attk = set_combine(
          element_acc
        , {head="ハゴンデスハット",legs="ハゴンデスパンツ",})
    local element_fullattk = set_combine(
          element_attk
        , {left_ear="ヘカテーピアス", right_ear="フリオミシピアス",})
    
--属性帯
    local obi = {}
    --所持している属性帯の属性を列挙
    obi.weathers = T{}
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
        body="ＨＡコート+1",
        legs="ナレストルーズ",
        feet="ヘラルドゲートル",
        left_ear="胡蝶のイヤリング",
    }
    local idle_def = set_combine(idle, 
        {
        head="ＨＡハット+1",
        hands="ＨＡカフス+1",
        legs="ＨＡパンツ+1",
        feet="ハゴンデスサボ",
        neck="黄昏の光輪",
        left_ring="ダークリング",
        right_ring="ダークリング",
        back="リパルスマント",
        });
    
    sets.precast = {}
    sets.precast['ケアル']= pre_light
    sets.precast['スタン'] = stun
    sets.precast['連環計'] = renkan
    sets.precast['ヘイスト'] = pre_wind
    sets.precast.FC = {}
    sets.precast.FC['光'] = pre_light
    sets.precast.FC['闇'] = pre_base
    sets.precast.FC['風'] = pre_wind
    sets.precast.FC['土'] = pre_earth
    sets.precast.FC['雷'] = pre_thunder
    sets.precast.FC['水'] = pre_base
    sets.precast.FC['火'] = pre_base
    sets.precast.FC['氷'] = pre_base
    sets.precast.FC['FC_LOW'] = pre_low
    sets.midcast = {}
    sets.midcast['強化魔法'] = enhance
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_wind
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
    sets.midcast.RECAST['雷'] = mid_thunder
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
    sets.equip.obi = obi
    send_command('input /macro book 7;wait .2;input /macro set 1')
    
    bindKeys(true)    
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^. gs c stunmode')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
        send_command('bind ^q gs c addendum')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^, gs c idle')
        send_command('unbind ^. gs c stunmode')
        send_command('unbind ^/ gs c elementmode')
        send_command('unbind ^[ gs c lock')
        send_command('unbind ^] gs c unlock')
        send_command('unbind ^q')
    end
end
function file_unload()
    bindKeys(false)
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
        cancel_buff(spell)
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
                    equip(sets.precast.FC[spell.element])
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element])
            else
                equip(sets.midcast['強化魔法'])
            end
            cancel_buff(spell)
        elseif spell.name == 'スタン' then
            if buffactive['疾風迅雷の章'] then
                equip(sets.precast['スタン'], {feet="ペダゴギローファー",})
            else
                equip(sets.precast['スタン'])
            end
        elseif spell.name == 'オーラ' then
            equip(sets.equip['強化魔法'])
        elseif spell.skill=='精霊魔法' then
            if spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element])
            else
                equip(set_element(spell.element))
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' or 
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 3 then
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
            elseif spell.name:startswith('バ')
               or spell.name:startswith('エン')
               or spell.name == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif  spell.cast_time > 3 then
                sets_equip = sets.midcast.RECAST[spell.element]
            end
            if buffactive['令狸執鼠の章'] then
                sets_equip = set_combine(sets_equip, {hands="ＳＶブレーサー+2",})
            end
        elseif spell.skill=='精霊魔法' then
            if spell.cast_time > 3 then
                equip(set_element(spell.element))
            end
        elseif spell.skill=='弱体魔法' then
            if spell.cast_time > 3 then
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
            or buffactive[sets.equip.obi.buffs[spell_element]] then
            if sets.equip.obi[spell_element] ~= nil then
                sets_equip = set_combine(sets_equip, 
                    sets.equip.obi[spell_element])
            end
         end
    end
    return sets_equip
end
function buff_change(buff, gain)
    windower.add_to_chat(123, buff..tostring(gain))
    if buff == 'レイヴシンボル' then
        if gain then
            windower.add_to_chat(123,'オートリレズON')
            equip({neck=reiv_neck,})
            disable('neck')
        else
            windower.add_to_chat(8,'オートリレズOFF')
            enable('neck')
        end
    end
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
    end
    if watch_recast:contains(spell.name) and not spell.interrupted then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
end

function status_change(new,old)
end

function self_command(command)
    local args = command:split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
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
        elseif args[1] == 'stunmode' then
            if #args == 1 then
                if sets.precast['スタン'] == sets.equip['スタン'] then
                    windower.add_to_chat(123,'スタン：リキャスト')
                    sets.precast['スタン'] = sets.equip['スタンリキャ']
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
        elseif args[1] == 'arts' then
            if #args == 1 then
                if buffactive['白のグリモア'] or buffactive['白の補遺'] then
                    windower.add_to_chat(123,'白のグリモア中→黒のグリモアへ')
                    my_send_command('input /ja 黒のグリモア <me>')
                else
                    windower.add_to_chat(123,'黒のグリモア中→白のグリモアへ')
                    my_send_command('input /ja 白のグリモア <me>')
                end
            else
                if args[2] == '白' or args[2] == '黒' then
                    my_send_command('input /ja '..args[2]..'のグリモア <me>')
                end
            end
        elseif args[1] == 'addendum' then
            if buffactive['白のグリモア'] then
                my_send_command('input /ja 白の補遺 <me>')
            elseif buffactive['黒のグリモア'] then
                my_send_command('input /ja 黒の補遺 <me>')
            else
                windower.add_to_chat(8, '------グリモアがかかってない！！---------')
            end
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
function showrecast(spellid, spellname)
    local recast = windower.ffxi.get_spell_recasts()
    windower.add_to_chat(123,'recast::'..spellname..'('..spellid..')='..recast[spellid] / 60)
    my_send_command('@wait '..tostring(recast[spellid] / 60)..';input /echo '..spellname..'詠唱可能')
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
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
include('lib/counter.lua')
