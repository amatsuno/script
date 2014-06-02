function get_sets()
    set_language('japanese')
    ignore_spells = T{
    }
--FC_BASE
    local pre_song_base ={
        main="ヴェナバラム",
        sub="ビビドストラップ",
        ammo=empty,
        head="ＡＤキャロ+2",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="ゲンデサスパッツ",
        feet="ＢＩスリッパー+1",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="アエドピアス",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    local pre_magic_base ={
        main="ヴェナバラム",
        sub="ビビドストラップ",
        ammo=empty,
        head="ナティラハット",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="アートシクロップス",
        feet="ケロナブーツ",
        waist="ニヌルタサッシュ",
        left_ear="アエドピアス",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    local pre_song_fire = set_combine(pre_song_base, {main="アターI"})
    local pre_song_light = set_combine(pre_song_base, {main="アーカI"})
    local pre_song_thunder = set_combine(pre_song_base, {main="アパマジャI"})
    local pre_song_wind = set_combine(pre_song_base, {main="バユタユI"})
    
    local pre_magic_fire = set_combine(pre_magic_base, {main="アターI"})
    local pre_magic_light = set_combine(pre_magic_base, {main="アーカI"})
    local pre_magic_thunder = set_combine(pre_magic_base, {main="アパマジャI"})
    local pre_magic_wind = set_combine(pre_magic_base, {main="バユタユI"})
    
    local mid_base = pre_base
    

    --強化
    local enhance = {
    }
    
--CURE
    local cure ={
    }
--弱体
    local enfeebling = {
    }
--精霊
    local element_acc={
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
--待機装備
    local idle = {
    }
    local idle_def = set_combine(idle, 
        {
        });
    
    sets.precast = {}
    sets.precast['ケアル']= pre_base
    sets.precast['ヘイスト'] = pre_base
    sets.precast['ストンスキン'] = pre_base
    sets.precast.FC = {}
    sets.precast.FC.song = {}
    sets.precast.FC.song['光'] = pre_song_light
    sets.precast.FC.song['闇'] = pre_song_base
    sets.precast.FC.song['風'] = pre_song_wind
    sets.precast.FC.song['土'] = pre_song_base
    sets.precast.FC.song['雷'] = pre_song_thuner
    sets.precast.FC.song['水'] = pre_song_base
    sets.precast.FC.song['火'] = pre_song_fire
    sets.precast.FC.song['氷'] = pre_song_base

    sets.precast.FC.magic = {}
    sets.precast.FC.magic['光'] = pre_magic_light
    sets.precast.FC.magic['闇'] = pre_magic_base
    sets.precast.FC.magic['風'] = pre_magic_wind
    sets.precast.FC.magic['土'] = pre_magic_base
    sets.precast.FC.magic['雷'] = pre_magic_thuner
    sets.precast.FC.magic['水'] = pre_magic_base
    sets.precast.FC.magic['火'] = pre_magic_fire
    sets.precast.FC.magic['氷'] = pre_magic_base
    sets.midcast = {}
    sets.midcast['強化魔法'] = enhance
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_base
    sets.precast['ストンスキン'] = enhance
    sets.midcast.RECAST = {}
    sets.midcast.RECAST['光'] = mid_base
    sets.midcast.RECAST['闇'] = mid_base
    sets.midcast.RECAST['風'] = mid_base
    sets.midcast.RECAST['土'] = mid_base
    sets.midcast.RECAST['雷'] = mid_base
    sets.midcast.RECAST['水'] = mid_base
    sets.midcast.RECAST['火'] = mid_base
    sets.midcast.RECAST['氷'] = mid_base
    sets.aftercast = {}
    sets.aftercast.idle = nil    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip.obi = obi
end

function pretarget(spell)
    if spell.type == 'BardSong' 
        and spell.target.type 
        and spell.target.type == 'PLAYER' 
        and not buffactive['ピアニッシモ'] 
        and not spell.target.charmed 
        cancel_spell()
        return
    end
end

function precast(spell)
    --myGetProperties(spell)
    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
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
            elseif spell.name == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element])
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.name == 'スタン' then
            equip(sets.precast['スタン'])
        elseif spell.skill=='精霊魔法' then
            if spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element])
            else
                equip(set_element(spell))
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
            if string.startswith(spell.name, 'バ')
               or spell.name == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.name == 'ストンスキン' then
                sets_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 3 then
                sets_equip = sets.midcast.RECAST[spell.element]
            end
        elseif spell.skill=='精霊魔法' then
            if spell.cast_time > 3 then
                equip(set_element(spell))
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

function set_element(spell)
    return sets.midcast.RECAST[spell.element]
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
    end
end

function status_change(new,old)
end

function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
            windower.add_to_chat(123,'lock')
            disable('main','sub','ammo')
        elseif args[1] == 'unlock' then
            windower.add_to_chat(123,'unlock')
            enable('main','sub','ammo')
        end
    end
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        elseif args[1] == 'elementmode' then
            if args[2] == 'ACC' then
                sets.midcast.element.mode = 'ACC'
            elseif args[2] == 'ATTK' then
                sets.midcast.element.mode = 'ATTK'
            elseif args[2] == 'FULL' then
                sets.midcast.element.mode = 'FULL'
            elseif args[2] == 'VW' then
                sets.midcast.element.mode = 'VW'
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
