function get_sets()
    set_language('japanese')
--着替えしたくないアビ・魔法のリスト
    ignore_spells = T{
    }  
--リキャストを監視したいアビ・魔法のリスト
    watch_recast = T{
        'スタン','ドレイン','アスピル'
    }
    reiv_neck='レフジネックレス+1'
--待機装備
    local idle = {
        main="アーススタッフ",
        head="ＨＡハット+1",
        body="ＨＡコート+1",
        hands="ジオミテーヌ",
        legs="ナレストルーズ",
        back="龍脈の外套",
        left_ring="ダークリング",
        right_ring="ダークリング",
        neck='黄昏の光輪',
        range="デュンナ",
        left_ear="胡蝶のイヤリング",
    }
    local idle_def = set_combine(idle, 
        {
        legs="ＨＡパンツ+1",
        feet="ＨＡサボ+1",
        
        })
    local idle_defmg = set_combine(idle_def,
        {
            head="魔人の帽子",
            left_ear='ハンドラーピアス',
            right_ear='ハンドラーピアス+1',
        })
    local idle_healing = set_combine(idle, 
        {
        main="ブンウェルスタッフ",
        waist="神術帯+1",
        });
--ロック
    local lock = {
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        range="デュンナ",
    }
--FC_BASE
    local pre_base ={
        head="ナティラハット",
        body="アンフルローブ",
        legs="ＧＯパンツ+1",
        hands="オトミグローブ",
        feet="リーガルパンプス+1",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="胡蝶のイヤリング",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="龍脈の外套",
    }
    local pre_low = {
    }
    
    local pre_light = set_combine(pre_base, {})
    local pre_dark  = set_combine(pre_base, {})
    local pre_earth = set_combine(pre_base, {})
    local pre_water = set_combine(pre_base, {})
    local pre_wind  = set_combine(pre_base, {})
    local pre_fire  = set_combine(pre_base, {})
    local pre_ice   = set_combine(pre_base, {})
    local pre_thunder = set_combine(pre_base, {})
    local mid_base = pre_base
    local mid_light = set_combine(mid_base, {})
    local mid_dark  = set_combine(mid_base, {})
    local mid_earth = set_combine(mid_base, {})
    local mid_water = set_combine(mid_base, {})
    local mid_wind  = set_combine(mid_base, {})
    local mid_fire  = set_combine(mid_base, {})
    local mid_ice   = set_combine(mid_base, {})
    local mid_thunder = set_combine(mid_base, {})
    

--強化
    local enhance = set_combine(idle_def, {
        main="麒麟棍",
        sub="フルキオグリップ",
        body="アンフルローブ",
        feet="リーガルパンプス+1",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        back="慈悲の羽衣",})
    --強化魔法専用の詠唱短縮装備（属性ごとの短縮装備とset_combineされる)
    local pre_enhance = {}
    
    local pre_stoneskin = set_combine(pre_earth, {})
    local mid_stoneskin = set_combine(enhance, {})
    
    local regen = set_combine(enhance, {})
    
--CURE
    local cure ={
    }
    local pre_cure = set_combine(pre_light, {})
--弱体
    local enfeebling = {
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="ＨＡサボ+1",
        neck="エディネクラス",
        waist="デモンリーサッシュ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="オメガリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
--精霊
    local element_acc={
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="セイズルコタルディ",
        hands="ＨＡカフス+1",
        legs="ＨＡパンツ+1",
        feet="ヘリオスブーツ",
        neck="エディネクラス",
        waist="山吹の帯",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="女王の指輪",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
    local element_attk = set_combine(
          element_acc
        , {hands="ヘリオスグローブ",
           right_ring="アキュメンリング",
           back="トーロケープ",
        })
    local element_fullattk = set_combine(
          element_attk,
          { head="ヘリオスバンド",
            left_ear="バーカロルピアス",
            right_ear="フリオミシピアス",
            sub="ズーゾーウグリップ",
          })
    
    local pre_impact = set_combine(pre_dark, {head=empty, body="トワイライトプリス",})
    local mid_impact = set_combine(element_acc, {head=empty, body="トワイライトプリス",})

    local dark_acc={
        main="レブレイルグ+2",
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="ヘリオスジャケット",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="ヘリオスブーツ",
        neck="エディネクラス",
        waist="山吹の帯",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="女王の指輪",
        right_ring="サンゴマリング",
        range=empty,
        ammo="ガストリタスラム",        
        back="リフラクトケープ",
    }
--風水
    local geomancy = set_combine(idel_def, {
        main="レブレイルグ+2",
        head="ＨＡハット+1",
        body="バグアチュニック",
        hands="ジオミテーヌ",
        legs="ＧＯパンツ+1",
        feet="リーガルパンプス+1",
        waist="デモンリーサッシュ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        range="デュンナ",
        back="龍脈の外套",        
    })
--stun
    local stun = {
        main="レブレイルグ+2",
        head="ナティラハット",
        body="ヘデラコタルディ",
        hands="オトミグローブ",
        legs="ＧＯパンツ+1",
        feet="リーガルパンプス+1",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="胡蝶のイヤリング",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="龍脈の外套",
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
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['精霊魔法'] = element_acc
    sets.midcast['風水魔法'] = geomancy
    sets.midcast['暗黒魔法'] = dark_acc
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
    sets.midcast.element = {}
    sets.midcast.element.mode = 'ACC'
    sets.midcast.element['ACC'] = element_acc
    sets.midcast.element['ATTK'] = element_attk
    sets.midcast.element['FULL'] = element_fullattk
    sets.aftercast = {}
    sets.aftercast.skip = false
    sets.aftercast.idle = nil    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['IDLE_DEFMG'] = idle_defmg
    sets.equip['HEALING'] = idle_healing
    sets.equip['LOCK'] = lock
    sets.equip.obi = obi
    --マクロブック、セット変更
    send_command('input /macro book 9;wait .2;input /macro set 10')
    --キーバインド設定
    bindKeys(true)

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
    jb_flag = false
    
    keep_geo = {
        ['インデ'] = {
            name = 'インデフォーカス',
            target='<me>',
            interval=150,
            time=0,
            flag = false,
        },
        ['ジオ'] = {
            name = 'ジオヘイスト',
            target='<me>',
            interval=150,
            time=0,
            flag = false,
        },
        keep=true,
    }
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^, gs c idle')
        send_command('unbind ^/ gs c elementmode')
        send_command('unbind ^[ gs c lock')
        send_command('unbind ^] gs c unlock')
        
    end
end
function file_unload()
    enable('main','sub','ammo','range')
    bindKeys(false)
end

function precast(spell)
    myGetProperties(spell,'rep:splell', 0)
    local set_equip = nil

    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
    elseif spell.type == 'BardSong' then
        if buffactive['ナイチンゲール']  then
            set_equip = set_song(spell)
            sets.aftercast.skip = true
        elseif spell.target.type == 'MONSTER' then
            set_equip = sets.precast.FC.FC_LOW
        else
            set_equip = sets.precast.FC[spell.element]
        end
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 0.75 then
            set_equip = sets.precast.FC.magic[spell.element]
        else
            set_equip = sets.midcast.RECAST[spell.element]
        end
        cancel_buff(spell)
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.type == 'Geomancy' then
        windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                set_equip = sets.precast['ケアル']
            elseif spell.name:find('レイズ') then
                set_equip = sets.precast.FC[spell.element]
            elseif spell.cast_time > 0.75 then
                set_equip = sets.precast[spell.skill]
            else
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 0.75 then
                    set_equip = set_combine(sets.precast.FC[spell.element], sets.precast.FC.enhance)
                else
                    set_equip = sets.midcast['強化魔法']
                end
            elseif spell.name == 'ストンスキン' then
                set_equip = set_combine(sets.precast['ストンスキン'], sets.precast.FC.enhance)
            elseif spell.cast_time > 0.75 then
                set_equip = sets.precast.FC[spell.element]
            else
                set_equip = sets.midcast.RECAST[spell.element]
            end
            cancel_buff(spell)
        elseif spell.name == 'スタン' then
            set_equip = sets.precast['スタン']
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                set_equip = sets.precast['インパクト']
            elseif spell.cast_time > 2.0 then
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
    if ignore_spells:contains(spell.name) then return end
    myGetProperties(spell,'mid:splell', 0)
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
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.type == 'Geomancy' then
        if spell.name == 'スタン' then
            set_equip = sets.midcast['スタン']
        elseif spell.skill=='回復魔法' then
            if string.find(spell.name, 'ケアル') then
                set_equip = sets.midcast['ケアル']
            elseif spell.name:find('レイズ') then
                set_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 0.75 then
                windower.add_to_chat(123,'equip midcast healingmagic')
                set_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if string.startswith(spell.name, 'バ')
               or spell.name == 'ファランクス' then
                set_equip = sets.midcast['強化魔法']
            elseif spell.name:startswith('リジェネ') then
                sets_equip = sets.midcast['リジェネ']
            elseif spell.name == 'ストンスキン' then
                set_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 0.75 then
                set_equip = sets.midcast.RECAST[spell.element]
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
        elseif spell.skill=='風水魔法' then
            set_equip = sets.midcast['風水魔法']
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
    
    set_equip = sets.midcast.element[sets.midcast.element.mode]
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
    if jb_flag then
        set_equip = set_combine(set_equip, {back='メシストピンマント',})
    end
    
    return set_equip
end
function set_song(spell)
    local set_equip = nil
    set_equip = sets.midcast.RECAST[spell.element]
    return set_equip
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
function pet_change(pet,gain)
    if not gain then
        keep_geo['ジオ'].time = 0
        keep_geo['ジオ'].flag =false
    end
end

function aftercast(spell)
    myGetProperties(spell,'aft:splell', 0)
    if sets.aftercast.idle ~= nil and not sets.aftercast.skip then
      equip(sets.aftercast.idle)
    end
    sets.aftercast.skip = false
    --myGetProperties(spell,'splell', 0)
    if watch_recast:contains(spell.name) and not spell.interrupted then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
    if not spell.interrupted then
        if keep_geo.keep and spell.name == 'スタン' then
            local currenttime=os.time()
            if currenttime > keep_geo['インデ'].time + keep_geo['インデ'].interval then
                check_geo(keep_geo['インデ'])
            elseif currenttime > keep_geo['ジオ'].time + keep_geo['ジオ'].interval then
                check_geo(keep_geo['ジオ'])
            end
        elseif spell.name == keep_geo['インデ'].name then
            my_send_command('@wait '..keep_geo['インデ'].interval..';gs c indi')
            keep_geo['インデ'].time = os.time()
            keep_geo['インデ'].flag =true
        elseif spell.name == keep_geo['ジオ'].name then
            my_send_command('@wait '..keep_geo['ジオ'].interval..';gs c geo')
            keep_geo['ジオ'].time = os.time()
            keep_geo['ジオ'].flag =true
        end
    end
end
function check_geo(keep)
    local currenttime=os.time()
    if currenttime > keep.time + keep.interval then
        local cmd = '@wait 3.5;'
        if keep.name:startswith('ジオ') and pet.isvalid then
            cmd = cmd..'input /ja フルサークル <me>;wait 2;'
        end
        cmd = cmd..'input /ma '..keep.name..' '..keep.target
        my_send_command(cmd)
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
function break_luopan()
    local cmd = 'input /ja フルサークル <me>'
    local recast = windower.ffxi.get_ability_recasts()
    dumpProperties(recast, 'recast', 0)
    --レイディアルアルカナ
    if recast and (not recast[252] or recast[252] == 0) then
        cmd = 'input /ja レイディアルアルカナ <me>'
    end
    my_send_command(cmd)
end
function showrecast(spellid, spellname)
    local recast = windower.ffxi.get_spell_recasts()
    windower.add_to_chat(123,'recast::'..spellname..'('..spellid..')='..recast[spellid] / 60)
    my_send_command('@wait '..tostring(recast[spellid] / 60)..';input /echo '..spellname..'詠唱可能')
end

--keep インデ:インデフォーカス:t[:間隔] ジオ:ジオヘイスト:me[:間隔]
--keep (on|off)
function set_keep_geo(command)
    table.remove(command, 1)
    local i, v
    i = 1
    while i <= #command
    do
        v=command[i]
        local arr = v:split(':')
        if #arr < 3 then 
            if #arr == 1 and arr[1] == 'off' then
                keep_geo.keep = false
                add_to_chat(123, 'geo keep→off')
            elseif arr[1] == 'on' then
                keep_geo.keep = true
                add_to_chat(123, 'geo keep→**ON**')
            else
                add_to_chat(123, 'error:パラメータが不足')
            end
            return
        end
        local geo = nil
        if arr[1] == 'インデ' then
            geo = keep_geo['インデ']
        elseif arr[1] == 'ジオ' then
            geo = keep_geo['ジオ']
        else
            add_to_chat(123, arr[1]..'はインデかジオを指定')
            return
        end
        if geo then
            geo.name = arr[2]
            geo.target = '<'..arr[3]..'>'
            if #arr > 3 and tonumber(arr[4]) then
                geo.interval = tonumber(arr[4])
            end
            add_to_chat(123, arr[1]..'の設定を変更:name='..keep_geo[arr[1]].name
                ..',target='..keep_geo[arr[1]].target
                ..',interval='..keep_geo[arr[1]].interval)
        end
        i=i+1
    end
    keep_geo.keep = true

end
function self_command(command)
    --local args = windower.from_shift_jis(command):split(' ')
    local args = command:split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
            if #args == 1 then
                equip(sets.equip['LOCK'])
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
                elseif sets.midcast.element.mode == 'ATTK' then
                    windower.add_to_chat(123,'精霊：FULL魔攻')
                    sets.midcast.element.mode = 'FULL'
                    sets.midcast['神聖魔法'] = sets.midcast.element['FULL']
                else
                    windower.add_to_chat(123,'精霊：魔命')
                    sets.midcast.element.mode = 'ACC'
                    sets.midcast['神聖魔法'] = enfeebling
                end
            else
                if args[2] == 'ACC' then
                    sets.midcast.element.mode = 'ACC'
                    sets.midcast['神聖魔法'] = enfeebling
                elseif args[2] == 'ATTK' then
                    sets.midcast.element.mode = 'ATTK'
                    sets.midcast['神聖魔法'] = sets.midcast.element['ATTK']
                elseif args[2] == 'FULL' then
                    sets.midcast.element.mode = 'FULL'
                    sets.midcast['神聖魔法'] = sets.midcast.element['FULL']
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
                elseif sets.aftercast.idle == sets.equip.IDLE_DEF then
                    windower.add_to_chat(123,'魔法カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEFMG
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
        elseif args[1] == 'keep' then
            set_keep_geo(args)
        elseif args[1] == 'indi' then
            keep_geo['インデ'].flag = false
            keep_geo['インデ'].time = 0
        elseif args[1] == 'geo' then
            keep_geo['ジオ'].flag = false
            keep_geo['ジオ'].time = 0
        elseif args[1] == 'cast_indi' then
            check_geo(keep_geo['インデ'])
        elseif args[1] == 'cast_geo' then
            check_geo(keep_geo['ジオ'])
        elseif args[1] == 'ra' then
            if #args >= 3 then
                if args[2]:startswith('ジオ') then
                    if tonumber(args[3]) > 0 then
                        keep_geo['ジオ'].name = args[2]
                        keep_geo['ジオ'].target = tonumber(args[3])
                        keep_geo['ジオ'].interval = 150
                        keep_geo['ジオ'].flag = false
                        keep_geo['ジオ'].time = 0
                    end
                end
                local cmd = nil
                cmd = 'input /ma '..args[2]..' '..args[3]
                my_send_command(cmd)
            end
        elseif args[1] == 'break_luopan' then
            break_luopan()
        elseif args[1] == 'jb' then
            if sets.equip.IDLE_DEF.back == 'メシストピンマント' then
                windower.add_to_chat(123, '待機:背中＝龍脈の外套')
                sets.equip.IDLE_DEF.back = '龍脈の外套'
                jb_flag = true
            else
                windower.add_to_chat(123, '待機:背中＝メシストピンマント')
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                jb_flag = false
            end
        elseif args[1] == 'move' then
            equip(set_move(sets.aftercast.idle))
        elseif args[1] == 'si' then
            my_send_command('mogmaster si geo')
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
        elseif args[1] == 'content' then
            local param = args[2]:lower()
            if param == 'jb' then
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                jb_flag = true
            elseif param == 'bc' then
                my_send_command('gs c idle idle_def;gs c elementmode full')
            end
        elseif args[1] == 'getbuff' then
            local param = tonumber(args[2])
            get_buff(param)
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