function get_sets()
    set_language('japanese')
function get_sets()
    set_language('japanese')
--FC_BASE
    local fc_base ={
        main=empty,
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
    local fc_low = {
        main=empty,
        sub=empty,
        ammo="インカントストーン",
        head="ナティラハット",
        body="アンフルローブ",
    }
    local frc_base = fc_base
    
    --光属性
    local fc_light = set_combine(fc_base, {main="アーカI",})
    local frc_light = set_combine(frc_base, {main="アーカII",})
    local fc_healing = fc_light
    
    --風属性
    local fc_wind = set_combine(fc_base, {main="バユバタI",})
    local frc_wind = set_combine(frc_base, {main="バユバタII",})

    --土属性
    local fc_earth = fc_base 
    local frc_earth = frc_base

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
--stun
    local stun = {
        main="ヴェナバラム",
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
        head="ゲンデサカウビーン",
        body="ゲンデサブリオー",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
    }
--弱体
    local enfeebling = {
        main={ name="レブレイルグ+2", augments={'DMG:+7','CHR+1','Mag. Acc.+11',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="ハゴンデスコート",
        hands="ハゴンデスカフス",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="ワイケトルク",
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
--神聖
    local divine = enfeebling

    sets.precast = {}
    sets.precast['ケアル']= fc_light
    sets.precast['スタン'] = stun
    sets.precast['連環計'] = renkan
    sets.precast['ヘイスト'] = fc_wind
    sets.precast.FC = {}
    sets.precast.FC['光'] = fc_light
    sets.precast.FC['闇'] = fc_base
    sets.precast.FC['風'] = fc_wind
    sets.precast.FC['土'] = fc_earth
    sets.precast.FC['雷'] = fc_base
    sets.precast.FC['水'] = fc_base
    sets.precast.FC['火'] = fc_base
    sets.precast.FC['氷'] = fc_base
    sets.precast.FC['FC_LOW'] = fc_low
    sets.midcast = {}
    sets.midcast['強化魔法'] = enhance
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = frc_wind
    sets.midcast.RECAST = {}
    sets.midcast.RECAST['光'] =frc_light
    sets.midcast.RECAST['闇'] =frc_base
    sets.midcast.RECAST['風'] = frc_wind
    sets.midcast.RECAST['土'] = frc_earth
    sets.midcast.RECAST['雷'] = frc_base
    sets.midcast.RECAST['水'] = frc_base
    sets.midcast.RECAST['火'] = frc_base
    sets.midcast.RECAST['氷'] = frc_base
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['スタン'] = stun
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip['スタンFC'] = stun_fc
    sets.equip['強化魔法'] = enhance
end

function precast(spell)
    myGetProperties(spell)
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
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'ヘイスト' then
            equip(sets.precast['ヘイスト'])
        elseif spell.name == 'スタン' then
            if buffactive['疾風迅雷の章'] then
                equip(sets.precast['スタン'], {feet="ＰＤローファー+1",})
            else
                equip(sets.precast['スタン'])
            end
        elseif spell.name == 'オーラ' then
        	equip(sets.equip['強化魔法'])
        elseif spell.cast_time >= 12 then
            --詠唱が3秒以上の魔法はFC着替え
            debug_mode_chat('debug: fastcast element.')
            equip(sets.precast.FC[spell.element])
        end
    end
end

function midcast(spell)
    local sets_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if string.find(spell.name, 'ケアル') then
            sets_equip = sets.midcast['ケアル']
        elseif spell.name == 'ヘイスト' then
            sets_equip = sets.midcast['ヘイスト']
        elseif spell.name == 'スタン' then
            sets_equip = sets.midcast['スタン']
        elseif spell.skill=='強化魔法' or 
               spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法'then
            sets_equip = sets.midcast[spell.skill]
        else
            sets_equip = sets.midcast.RECAST[spell.element]
        end
    end
    
    if sets_equip ~= nil then
        equip(sets_equip)
    end
end

function aftercast(spell)
end

function status_change(new,old)
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
        end
    end
end

function myGetProperties(t)
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