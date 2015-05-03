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
        head="槌の髪飾り",
        body="ＨＡコート+1",
        hands="ＧＯミテーヌ+1",
        legs="アシドゥイズボン",
        feet="ＨＡサボ+1",
        back="龍脈の外套",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        neck='黄昏の光輪',
        range="デュンナ",
        right_ear="驕慢の耳",
        left_ear="胡蝶のイヤリング",
        waist="イーサベルト",
    }
    local idle_def = set_combine(idle, 
        {
        head="ＨＡハット+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        
        })
    local pet = {
            head="魔人の帽子",
            hands="ＧＯミテーヌ+1",
            left_ear="ハンドラーピアス",
            right_ear="ハンドラーピアス+1",
            ammo=empty,
            range="デュンナ",
            back="龍脈の外套",
        }
    local rgnpet = {
            head="魔人の帽子",
            body="テルキネシャジュブ",
            legs="テルキネブラコーニ",
            feet="ＢＡサンダル+1",
    }
    local idle_defpet = set_combine(idle_def, pet)
    local idle_rgnpet = set_combine(idle_defpet, rgnpet)
    local idle_healing = set_combine(idle, 
        {
        main="ブンウェルスタッフ",
        feet="ケロナブーツ",
        });
    local lock = {
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        range="デュンナ",
    }
--FC_BASE
    local pre_base ={
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        head="ナティラハット",
        body="アンフルローブ",
        legs="ＧＯパンツ+1",
        feet="リーガルパンプス+1",
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="ダークリング",
        back="龍脈の外套",
    }
    local pre_low = {
        head="ナティラハット",
        body="ヘリオスジャケット",
        neck="ボルトサージトルク",
        legs="ＧＯパンツ+1",
        back="龍脈の外套",
    }
    
    local pre_light = set_combine(pre_base, {})
    local pre_light = set_combine(pre_base, {main="アーカI",})
    local pre_dark  = set_combine(pre_base, {})
    local pre_earth = set_combine(pre_base, {})
    local pre_earth = set_combine(pre_base, {main="ビシュラバI",})
    local pre_water = set_combine(pre_base, {})
    local pre_wind = set_combine(pre_base, {main="バユバタI",})
    local pre_fire  = set_combine(pre_base, {})
    local pre_ice   = set_combine(pre_base, {})
    local pre_thunder = set_combine(pre_base, {})
    local mid_base = pre_base
    local mid_light = set_combine(mid_base, {main="アーカII",})
    local mid_dark  = set_combine(mid_base, {})
    local mid_earth = set_combine(mid_base, {main="ビシュラバII",})
    local mid_water = set_combine(mid_base, {})
    local mid_wind = set_combine(mid_base, {main="バユバタII",})
    local mid_fire  = set_combine(mid_base, {})
    local mid_ice   = set_combine(mid_base, {})
    local mid_thunder = set_combine(mid_base, {})
    
    local pre_element = {hands='バグアミテーヌ',}
--強化
    local enhance = set_combine(idle_def, {
        main="麒麟棍",
        sub="フルキオグリップ",
        head="ウムシクハト",
        body="アンフルローブ",
        feet="リーガルパンプス+1",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        back="慈悲の羽衣",})
    --強化魔法専用の詠唱短縮装備（属性ごとの短縮装備とset_combineされる)
    local pre_enhance = {waist="ジーゲルサッシュ",}
    
    local pre_stoneskin = set_combine(pre_earth, {waist="ジーゲルサッシュ",})
    local mid_stoneskin = set_combine(enhance, {waist="ジーゲルサッシュ",})
    
    local regen = set_combine(enhance, {})
    
--CURE
    local cure ={
        main="アーカIV",
        hands="ボクワスグローブ",
        legs="ナレストルーズ",
    }
    local pre_cure = set_combine(pre_light, {})
--弱体
    local enfeebling = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        head="テルキネキャップ",
        body="イスキミアシャブル",
        hands="ＨＡカフス+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+24','"Fast Cast"+3','INT+6',}},
        neck="ワイケトルク",
        waist="オヴェイトロープ",
        left_ear="エンチャンピアス+1",
        right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        range="オウレオール",
        back="リフラクトケープ",
    }
--暗黒
    local dark_acc={
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        head="妖蟲の髪飾り+1",
        body="ヘリオスジャケット",
        hands="ＨＡカフス+1",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="エーシルトルク",
        waist="オヴェイトロープ",
        left_ear="エンチャンピアス+1",
        right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="慈悲の羽衣",
    }
    
--精霊-->init_element()に移動
--風水
    local geomancy = set_combine(idel_def, {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        head="アジムスフード",
        body="バグアチュニック",
        hands="ＧＯミテーヌ+1",
        legs="ＢＡパンツ+1",
        feet="アジムスゲートル",
        left_ear="エンチャンピアス+1",
        right_ear="グアチピアス",
        range="デュンナ",
        back="龍脈の外套",
    })
--sp
    local sp_abi = {
        body="バグアチュニック",
        legs='ＢＡパンツ+1',
        feet='ＢＡサンダル+1',
    }
--stun
    local stun = {
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="ヘリオスジャケット",
        hands="ＨＡカフス+1",
        legs="ＧＯパンツ+1",
        feet="リーガルパンプス+1",
        neck="オルンミラトルク",
        waist="ウィトフルベルト",
        right_ear="ロケイシャスピアス",
        left_ear="エンチャンピアス+1",
        left_ring="プロリクスリング",
        right_ring="ウェーザーリング",
        back="龍脈の外套",
    }
    local stun_acc1 = set_combine(stun, 
    	{
            waist="ニヌルタサッシュ",
    		left_ring="サンゴマリング",
    		legs="アートシクロップス",
            neck="ボルトサージトルク",
    		right_ear="グアチピアス",
    		feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+24','"Fast Cast"+3','INT+6',}},
    	})
    local stun_acc2 = set_combine(stun_acc1,
    	{
    		head="テルキネキャップ",
    	})
    
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
    sets.precast['ボルスター'] = sp_abi
    sets.precast['レイディアルアルカナ'] = sp_abi
    sets.precast['メンドハレイション'] = sp_abi
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
    sets.precast.FC['精霊魔法'] = pre_element
    sets.precast.FC.enhance = pre_enhance
    sets.midcast = {}
    sets.midcast['強化魔法'] = enhance
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['精霊魔法'] = element_acc
    sets.midcast['暗黒魔法'] = dark_acc
    sets.midcast['風水魔法'] = geomancy
    sets.midcast['リジェネ'] = regen
    sets.midcast['ケアル'] = cure
    sets.midcast['スタン'] = stun
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast['ストンスキン'] = mid_stoneskin
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
    sets.midcast.element.mpreduce = false
    --sets.midcast.element['古代'] = element_acc
    --sets.midcast.element['ACC'] = element_acc
    --sets.midcast.element['ATTK'] = element_attk
    --sets.midcast.element['FULL'] = element_fullattk
    --sets.midcast.element['VW'] = pre_base
    sets.aftercast = {}
    sets.aftercast.skip = false
    sets.aftercast.idle = idle_def    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['スタン'] = stun
    sets.equip['スタン魔命1'] = stun_acc1
    sets.equip['スタン魔命2'] = stun_acc2  
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['IDLE_DEFPET'] = idle_defpet
    sets.equip['IDLE_RGNPET'] = idle_rgnpet
    sets.equip['HEALING'] = idle_healing
    sets.equip['PET'] = pet
    sets.equip['RGNPET'] = rgnpet
    sets.equip['LOCK'] = lock
    --精霊魔法初期化
    init_element()
    sets.equip.obi = obi
    --マクロブック、セット変更
    send_command('input /macro book 9;wait .2;input /macro set 10')
    --キーバインド設定
    bindKeys(true)

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
    keep_geo = {
        ['インデ'] = {
            name = 'インデフォーカス',
            target='me',
            interval=150,
            time=0,
            flag = false,
        },
        ['ジオ'] = {
            name = 'ジオランゴール',
            target='stnpc',
            interval=150,
            time=0,
            flag = false,
        },
        keep=false,
    }
	timer_reg = {}
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^. gs c stunmode')
        send_command('bind ^/ gs c elementmode')
        send_command('bind !/ gs c mpreduce')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^, gs c idle')
        send_command('unbind ^. gs c stunmode')
        send_command('unbind ^/ gs c elementmode')
        send_command('unbind !/ gs c mpreduce')
        send_command('unbind ^[ gs c lock')
        send_command('unbind ^] gs c unlock')
        
    end
end
function file_unload()
    bindKeys(false)
end
function init_element()
    local element_acc={
    main={ name="レブレイルグ+2", augments={'DMG:+17','INT+4','"Mag.Atk.Bns."+25',}},
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="ヘリオスジャケット",
        hands="ＨＡカフス+1",
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
        neck="エディネクラス",
        waist="山吹の帯",
        left_ear="エンチャンピアス+1",
        right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="トーロケープ",
    }
    
    
    local element_attk = set_combine(
          element_acc
        , {
            legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -2%','"Mag.Atk.Bns."+22',}},
          })
    local element_fullattk = set_combine(
          element_attk
        , { head={ name="ＨＡハット+1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Mag.Atk.Bns."+25',}},
            hands={ name="ヘリオスグローブ", augments={'"Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+9',}},
            sub="エルダーグリップ+1",neck="水影の首飾り",
            left_ear="怯懦の耳",
            right_ear="フリオミシピアス",
            range=empty,ammo="オンブルタスラム+1",
            left_ring="女王の指輪",})
    local element_mb = {
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Magic burst mdg.+8%',}},
        feet={ name="ヘリオスブーツ", augments={'"Mag.Atk.Bns."+24','"Occult Acumen"+7','Magic burst mdg.+5%',}},
        neck="水影の首飾り",
        right_ring="夢神の指輪",
    }
    local pre_impact
    local mid_impact
    if sets.midcast.element.mpreduce then
        element_fullattk = set_combine(element_fullattk, {body='セイズルコタルディ',})
    end

    if sets.aftercast.idle == sets.equip.IDLE_DEFPET then
        element_acc = set_combine(element_acc, sets.equip['PET'])
        element_attk = set_combine(element_attk, sets.equip['PET'])
        element_fullattk = set_combine(element_fullattk, sets.equip['PET'])
        local impact_def = set_combine(sets.equip['PET'], {head=empty, body="トワイライトプリス",})
        pre_impact = set_combine(sets.precast.FC['闇'] , impact_def)
        mid_impact = set_combine(element_acc, impact_def)
    else
        pre_impact = set_combine(sets.precast.FC['闇'] , {head=empty, body="トワイライトプリス",})
        mid_impact = set_combine(element_acc, {head=empty, body="トワイライトプリス",})
    end
    sets.precast['インパクト'] = pre_impact
    sets.midcast['インパクト'] = mid_impact

    sets.midcast.element['古代'] = element_acc
    sets.midcast.element['ACC'] = element_acc
    sets.midcast.element['ATTK'] = element_attk
    sets.midcast.element['FULL'] = element_fullattk
    sets.midcast.element['MBURST'] = element_mb
end

function precast(spell)
    dumpProperties(spell,'pre:splell', 0)
    local set_equip = nil

    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
        if spell.name == 'ボルスター' then
            add_to_chat(8, 'ボルスター発動！！！！！！！！！！')
            set_equip = sets.precast[spell.name]
        elseif sets.precast[spell.name] then
            add_to_chat(8, spell.name..'発動～')
            set_equip = sets.precast[spell.name]
        end
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
                set_equip = set_combine(sets.precast['インパクト'], sets.precast.FC['精霊魔法'])
            elseif spell.cast_time > 2.0 then
                set_equip = set_combine(sets.precast.FC[spell.element], sets.precast.FC['精霊魔法'])
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
    dumpProperties(spell,'mid:splell', 0)
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
                set_equip = sets.midcast['リジェネ']
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
    if mb and os.time() - mb.time < 5 and mb.element[spell.element] then
        windower.add_to_chat(8, 'MBモード！！！！'..spell.element)
        set_equip = set_combine(set_equip, sets.midcast.element.MBURST)
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
function aftercast(spell)
    dumpProperties(spell,'aft:splell', 0)
    if sets.aftercast.idle ~= nil and not sets.aftercast.skip then
      equip(sets.aftercast.idle)
    end
    sets.aftercast.skip = false
    --dumpProperties(spell,'splell', 0)
    if watch_recast:contains(spell.name) and not spell.interrupted then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
    if not spell.interrupted and spell.type == 'Geomancy' then
        update_timer(spell)
    end
    
    if not spell.interrupted then
        if keep_geo.keep and spell.name == 'スタン' then
        	cast_geo()
        elseif spell.name == keep_geo['インデ'].name then
            local dur = calculate_duration(spell)
            keep_geo['インデ'].interval = dur - 40
            keep_geo['インデ'].time = os.time()
            keep_geo['インデ'].flag =true
        elseif spell.name == keep_geo['ジオ'].name then
            local dur = calculate_duration(spell)
            keep_geo['ジオ'].interval = dur - 40
            keep_geo['ジオ'].time = os.time()
            keep_geo['ジオ'].flag =true
        end
    end
end
function cast_geo()
    local currenttime=os.time()
    if currenttime > keep_geo['インデ'].time + keep_geo['インデ'].interval then
    	add_to_chat(0xCE,keep_geo['インデ'].name..'の張替えが必要かも！？－－－－－－－－－－－－－')
        --my_send_command('@wait 3.5;input /ma '..keep_geo['インデ'].name..' <'..keep_geo['インデ'].target..'>')
    elseif currenttime > keep_geo['ジオ'].time + keep_geo['ジオ'].interval then
    	add_to_chat(0xCE,keep_geo['ジオ'].name..'の張替えが必要かも！？－－－－－－－－－－－－－')
        --my_send_command('@wait 3.5;input /ja フルサークル <me>;wait 2'
        --    ..';input /ma '..keep_geo['ジオ'].name..' <'..keep_geo['ジオ'].target..'>')
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
            geo.target = arr[3]
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
                windower.add_to_chat(123,'lock')
                equip(sets.equip['LOCK'])
                disable('main','sub','ammo','range')
                my_send_command('@wait 1;input /lockstyle on')
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
                if sets.aftercast.idle == sets.equip.IDLE_RGNPET then
                    windower.add_to_chat(123,'リフレ装備待機')
                    sets.aftercast.idle = sets.equip.IDLE
                elseif sets.aftercast.idle == sets.equip.IDLE then
                    windower.add_to_chat(123,'カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEF
                elseif sets.aftercast.idle == sets.equip.IDLE_DEF then
                    windower.add_to_chat(123,'羅盤カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEFPET
                else
                    windower.add_to_chat(123,'羅盤リジェネ装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_RGNPET
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
                elseif param == 'idle_pet' then
                    windower.add_to_chat(123,'羅盤カット装備待機')
                    sets.aftercast.idle = sets.equip.IDLE_DEFPET
                elseif param == 'cure' then
                   windower.add_to_chat(123,'set to idle_cure')
                    sets.aftercast.idle = sets.precast['ケアル']
                end
                equip(sets.aftercast.idle)
            end
            init_element()
        elseif args[1] == 'keep' then
            set_keep_geo(args)
        elseif args[1] == 'indi' then
        	my_send_command('input /ma '..keep_geo['インデ'].name..' <'..keep_geo['インデ'].target..'>')
        elseif args[1] == 'geo' then
        	my_send_command('input /ma '..keep_geo['ジオ'].name..' <'..keep_geo['ジオ'].target..'>')
        elseif args[1] == 'ra' then
            if #args >= 3 then
                local cmd = nil
                cmd = 'input /ma '..args[2]..' '..args[3]
                my_send_command(cmd)
            end
        elseif args[1] == 'stunmode' then
            if #args == 1 then
                if sets.precast['スタン'] == sets.equip['スタン'] then
                    windower.add_to_chat(123,'スタン：魔命1')
                    sets.precast['スタン'] = sets.equip['スタン魔命1']
                    sets.midcast['スタン'] = sets.equip['スタン魔命1']
                elseif sets.precast['スタン'] == sets.equip['スタン魔命1'] then
                    windower.add_to_chat(123,'スタン：魔命2')
                    sets.precast['スタン'] = sets.equip['スタン魔命2']
                    sets.midcast['スタン'] = sets.equip['スタン魔命2']
                else
                    windower.add_to_chat(123,'スタン')
                    sets.precast['スタン'] = sets.equip['スタン']
                    sets.midcast['スタン'] = sets.equip['スタン']
                end
            else
                if sets.equip[args[2]] ~= nil then
                    windower.add_to_chat(123,'スタン：'..args[2])
                    sets.precast['スタン'] = sets.equip[args[2]]
                    sets.midcast['スタン'] = sets.equip[args[2]]
                end
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
        elseif args[1] == 'mpreduce' then
            if sets.midcast.element.mpreduce then
                windower.add_to_chat(123,'MPモード通常')
                sets.midcast.element.mpreduce = false
            else
                windower.add_to_chat(123,'MPモード節約')
                sets.midcast.element.mpreduce = true
            end
            init_element()
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
        elseif args[1] == 'plaer' then
            dumpProperties(player, 'player', 0)
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
        elseif args[1] == 'ra' then
            if #args >= 3 then
                local cmd = nil
                cmd = 'input /ma '..args[2]..' '..args[3]
                my_send_command(cmd)
            end
        end
    end
end
function update_timer(spell)
	local t = os.time()
    local timer_name = spell.name
	
	local dur = calculate_duration(spell)
	windower.add_to_chat(0xCE, "効果時間 "..timer_name..' '..dur)
	-- 効果時間切れの歌を削除
	local tempreg = {}
	for i,v in pairs(timer_reg) do
		if v < t then tempreg[i] = true end
	end
	for i,v in pairs(tempreg) do
		timer_reg[i] = nil
	end
	if timer_reg[timer_name] then
	    --カスタムタイマーを操作するときはSJISに変換すると文字化けする！！
		send_command('timers delete "'..timer_name..'"')
		timer_reg[timer_name] = t + dur
		send_command('timers create "'..timer_name..'" '..dur..' down')
	else
		timer_reg[timer_name] = t+dur
		send_command('timers create "'..timer_name..'" '..dur..' down')
	end
end

function calculate_duration(spell)
    if spell.type == 'Geomancy' then
        local mult = 1.0
        if player.equipment.legs == 'バグアパンツ' then  
            mult = mult + 0.12
        elseif player.equipment.legs == 'ＢＡパンツ+1' then 
            mult = mult + 0.15 
        end
        if player.equipment.back == '龍脈の外套' then
            mult = mult + 0.13
        end
        if player.equipment.feet == 'アジムスゲートル' then
            mult = mult + 0.1
        end
        mult = mult * 180
        if mult > 240 then
            mult = 240
        end
        return mult
    else
        return spell.duration
    end
end

function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
include('lib/counter.lua')