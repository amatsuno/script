function get_sets()
    set_language('japanese')
    assist = true
    --ancient_spells = T{
    --    'トルネド','フリーズ','フレア','フラッド','バースト','クエイク',
    --    'トルネドII','フリーズII','フレアII','フラッドII','バーストII','クエイクII',
    --}
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
    expandtime_spells=T{
        'アクアベール',
        'ヘイスト',
    }
--FC_BASE
    local pre_base ={
        main="ケラウノス",
        sub="ビビドストラップ",
        head="ナティラハット",
        body="アンフルローブ",
        hands={ name="ヘリオスグローブ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','INT+10',}},
        legs="サイクロスラッパ",
        feet="リーガルパンプス+1",
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
        legs="サイクロスラッパ",
    }
    local mid_base = set_combine(pre_base, {body="ヘリオスジャケット",})
    --精霊用
    local fc_element = {
        head={ name="ヘリオスバンド", augments={'"Mag.Atk.Bns."+24','"Fast Cast"+5','Magic burst dmg.+8%',}},
        hands={ name="ヘリオスグローブ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','INT+10',}},
        body="ヘリオスジャケット",
        legs="サイクロスラッパ",
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
        neck="ボルトサージトルク",
        left_ear="バーカロルピアス",
        back="スイスケープ+1",
     }
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
        head="ウムシクハット",
        body="テルキネシャジュブ",
        hands='テルキネグローブ',
        feet="リーガルパンプス+1",
        legs={ name="テルキネブラコーニ", augments={'Enh. Mag. eff. dur. +7',}},
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        back="慈悲の羽衣",
    }
    local enhance_expandtime={
        body='テルキネシャジュブ',
        hands='テルキネグローブ',
        legs={ name="テルキネブラコーニ", augments={'Enh. Mag. eff. dur. +7',}},
        feet="テルキネピガッシュ",
    }
    local baXX = enhance
    local stoneskin = set_combine(enhance, {
            neck='ノデンズゴルゲット',
            waist="ジーゲルサッシュ",})
    
--stun
    local stun = {
        main="ケラウノス",
        sub="メフィテスグリップ",
        head="ナティラハット",
        body="ヘリオスジャケット",
        hands={ name="ヘリオスグローブ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','INT+10',}},
        legs="サイクロスラッパ",
        feet="リーガルパンプス+1",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        range="オウレオール",
        right_ear="ロケイシャスピアス",
        left_ear="エンチャンピアス+1",
        left_ring="プロリクスリング",
        right_ring="ウェーザーリング",
        back="スイスケープ+1",
    }
    local stun_acc1 = set_combine(stun, 
    	{
            feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
            neck="ボルトサージトルク",
 	        left_ring="サンゴマリング",
        	right_ear="グアチピアス",
    	})
    local stun_acc2 = set_combine(stun_acc1,
    	{
            head={ name="ヘリオスバンド", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+9','INT+10',}},
            hands="ＨＡカフス+1",
    	})
    
--CURE
    local cure ={
        main="アーカIV",
        hands="テルキネグローブ",
        body="テルキネシャジュブ",
        legs="ナレストルーズ",
        feet='ヴァニヤクロッグ',
        neck='ノデンズゴルゲット',
    }
    local pre_cure = set_combine(
        pre_light, {back='パートリケープ',feet='ヴァニヤクロッグ',})
--弱体
    local enfeebling = {
        main="ケラウノス",
        sub="メフィテスグリップ",
        head={ name="ヘリオスバンド", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+9','INT+10',}},
        body="イスキミアシャブル",
        hands="ＨＡカフス+1",
        legs='サイクロスラッパ',
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
        neck="ワイケトルク",
        range="オウレオール",
        waist="オヴェイトロープ",
        left_ear="バーカロルピアス",
    	right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="ベーンケープ",
    }
    local pre_sleep ={
        main="ケラウノス",
        sub="メフィテスグリップ",
        head="ナティラハット",
        hands="ＨＡカフス+1",
        body="ヘリオスジャケット",
        legs="サイクロスラッパ",
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
        waist="オヴェイトロープ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        neck="オルンミラトルク",
        range="オウレオール",
        left_ring="サンゴマリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }

--暗黒
    local dark_acc={
        main="ケラウノス",
        sub="メフィテスグリップ",
        head="妖蟲の髪飾り+1",
        body="ヘリオスジャケット",
        hands="ＨＡカフス+1",
        legs="サイクロスラッパ",
        feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
        neck="ボルトサージトルク",
        range="オウレオール",
        waist="オヴェイトロープ",
        left_ear="バーカロルピアス",
    	right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="慈悲の羽衣",
    }
    
--精霊
    local element_acc={
    main="ケラウノス",
    sub="エルダーグリップ+1",
    head={ name="ヘリオスバンド", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+9','INT+10',}},
    body="ＳＰコート+1",
    hands="ＨＡカフス+1",
    legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
    feet={ name="ヘリオスブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Fast Cast"+5','INT+7 MND+7',}},
    neck="エディネクラス",
    range="オウレオール",
    waist="山吹の帯",
    left_ear="バーカロルピアス",
	right_ear="グアチピアス",
    left_ring="女王の指輪+1",
    right_ring="ウェーザーリング",
    back="トーロケープ",
    }
    local element_attk = set_combine(
          element_acc,
          {
            hands={ name="ヘリオスグローブ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','INT+10',}},
            right_ear="フリオミシピアス",
          })
    local element_fullattk = set_combine(
          element_attk
        , { head={ name="ＨＡハット+1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -4%','"Mag.Atk.Bns."+25',}},
            hands={ name="ヘリオスグローブ", augments={'"Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+9',}},
            legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','"Mag.Atk.Bns."+28',}},
            feet={ name="ヘリオスブーツ", augments={'"Mag.Atk.Bns."+25','"Occult Acumen"+9','INT+10',}},
            neck="水影の首飾り",
            range=empty,ammo="オンブルタスラム+1",
            right_ring="女王の指輪+1",})
    local element_mb = {
        head={ name="ヘリオスバンド", augments={'"Mag.Atk.Bns."+24','"Fast Cast"+5','Magic burst dmg.+8%',}},
        hands={ name="ヘリオスグローブ", augments={'"Mag.Atk.Bns."+24','"Fast Cast"+4','Magic burst dmg.+7%',}},
        feet={ name="ヘリオスブーツ", augments={'"Mag.Atk.Bns."+24','"Occult Acumen"+7','Magic burst dmg.+10%',}},
        neck="水影の首飾り",
        right_ring="夢神の指輪",
    }
    local element_body_notconserve = {body="ウィッチングローブ",}

    local impact=set_combine(element_acc, {head=empty, body="トワイライトプリス",})

--神聖
    local divine = enfeebling

--属性帯
    local obi = {}
    --所持している属性帯の属性を列挙
    obi.weathers = T{'風','土','火','水','氷','雷','光','闇'}
    --所持している属性帯の装備コマンド
    obi['風']={waist="八輪の帯",}
    obi['土']={waist="八輪の帯",}
    obi['氷']={waist="八輪の帯",}
    obi['火']={waist="八輪の帯",}
    obi['水']={waist="八輪の帯",}
    obi['雷']={waist="八輪の帯",}
    obi['光']={waist="八輪の帯",}
    obi['闇']={waist="八輪の帯",}
    --陣のID
    obi.buffs ={}
    obi.buffs['風'] = 180 --烈風の陣
    obi.buffs['土'] = 181 --砂塵の陣
    obi.buffs['火'] = 178 --熱波の陣
    obi.buffs['氷'] = '吹雪の陣'
    obi.buffs['水'] = '豪雨の陣'
    obi.buffs['雷'] = '疾雷の陣'
--待機装備
    local idle = {
        main="アーススタッフ",
        sub="ビビドストラップ",
        head="ビファウルクラウン",
        body="ＨＡコート+1",
        legs="アシドゥイズボン",
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
        legs={ name="ＨＡパンツ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -2%','Mag. Acc.+26',}},
        feet="ＨＡサボ+1",
        neck="黄昏の光輪",
        right_ear="驕慢の耳",
        left_ear="胡蝶のイヤリング",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
        });
    local lock = {
        main="ケラウノス",
        sub="エルダーグリップ+1",
        range=empty,ammo="オンブルタスラム+1",
    }
--MP装備（ミルキル）
    local equip_mp = {
        head="妖蟲の髪飾り+1",
        body="ウェーザーローブ+1",
        hands="オトミグローブ",
        legs="サイクロスラッパ",
        feet="リーガルパンプス+1",
        neck="オルンミラトルク",
        waist="山吹の帯",
        left_ear="胡蝶のイヤリング",
        right_ear="エテオレートピアス",
        left_ring="サンゴマリング",
        right_ring="メフィタスリング",
        back="ベーンケープ",
    }
    sets.ws = {}
    sets.ws['ミルキル'] = equip_mp
    sets.precast = {}
    sets.precast['ケアル']= pre_cure
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
    sets.precast.FC.element = fc_element
    sets.midcast = {}
    sets.midcast['インパクト'] = impact
    sets.midcast['強化魔法'] = enhance
    sets.midcast['強化魔法効果時間'] = enhance_expandtime
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
    sets.midcast.element['ACC'] = element_acc
    sets.midcast.element['ATTK'] = element_attk
    sets.midcast.element['FULL'] = element_fullattk
    sets.midcast.element['VW'] = pre_base
    sets.midcast.element['MBURST'] = element_mb
    sets.midcast.element['NOTCONSERVE'] = element_body_notconserve
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
    sets.equip['スタン魔命2'] = stun_acc2
    sets.equip['スタン魔命1'] = stun_acc1
    sets.equip['強化魔法'] = enhance
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip.obi = obi
    sets.equip['HEALING'] = idle_healing
    sets.equip['スリプル'] = {}
    sets.equip['スリプル'].precast = pre_sleep
    sets.equip['LOCK'] = lock
    --enable('main','sub','ammo')
    rev_attk = "ケラウノス"

    send_command('input /macro book 4;wait .2;input /macro set 10')
    bindKeys(true)    

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
    jb_flag = false
    lock_weapon=false

end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^u gs c setmb')
        send_command('bind ^y gs c treasure')
        send_command('bind ^, gs c idle')
        send_command('bind ^. gs c stunmode')
        send_command('bind ^/ gs c elementmode')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^u')
        send_command('unbind ^y')
        send_command('unbind ^,')
        send_command('unbind ^/')
        send_command('unbind ^.')
        send_command('unbind ^[')
        send_command('unbind ^]')
    end
end
function file_unload()
    bindKeys(false)
end

function precast(spell)
    dumpProperties(spell,'spell',0)
    if ignore_spells:contains(spell.ja) then return end
    if spell.type == 'JobAbility' then
    elseif spell.type=="WeaponSkill" then
        if sets.ws[spell.ja] then
            equip(sets.ws[spell.ja])
        end
    elseif spell.type == 'BardSong' then
        if spell.cast_time > 0.75 then
            equip(sets.precast.FC[spell.element])
        else
            equip(sets.midcast['弱体魔法'])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        add_to_chat(123,'name='..spell.ja..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.ja, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.ja:find('レイズ') then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast[spell.skill])
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.skill=='強化魔法' then
            if spell.ja:startswith('バ') then
                if spell.cast_time > 0.75 then
                    equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
                else
                    local sets_equip = sets.midcast['強化魔法']
                    if expandtime_spells:contains(spell.name) then 
                        sets_equip = set_combine(sets_equip, sets.midcast['強化魔法効果時間'] )
                    end
                    equip(sets_equip)
                end
            elseif spell.ja == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
            cancel_buff(spell)
        elseif spell.ja == 'スタン' then
            equip(sets.precast['スタン'])
        elseif spell.skill=='精霊魔法' then
            if spell.ja == 'インパクト' then
                equip(sets.precast['インパクト'])
            elseif spell.ja == 'メテオ' then
                add_to_chat(8, 'メテオ詠唱開始～')
            elseif spell.cast_time > 2.0 then
                equip(sets.precast.FC.element)
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC.FC_LOW)
            else
                equip(set_element(spell))
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' or 
               spell.skill=='暗黒魔法' then
            if spell.ja:startswith('スリプ') or spell.ja == 'ブレクガ' then
                equip(sets.precast['スリプル'])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC[spell.element])
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.cast_time > 0.75 then
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
    elseif spell.type == 'BardSong' then
        sets_equip = sets.midcast['弱体魔法']
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.ja == 'スタン' then
            sets_equip = sets.midcast['スタン']
        elseif spell.skill=='回復魔法' then
            if string.find(spell.ja, 'ケアル') then
                sets_equip = sets.midcast['ケアル']
            elseif spell.ja:find('レイズ') then
                sets_equip = sets.midcast.RECAST[spell.element]
            elseif spell.cast_time > 0.75 then
                --windower.add_to_chat(123,'equip midcast healingmagic')
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if string.startswith(spell.ja, 'バ')
               or spell.ja == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.ja == 'ストンスキン' then
                sets_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 0.75 then
                if expandtime_spells:contains(spell.name) then 
                    sets_equip = set_combine(
                        sets.midcast.RECAST[spell.element], 
                        sets.midcast['強化魔法効果時間'] )
                    windower.add_to_chat(8,'効果時間延長')
                else
                    sets_equip = sets.midcast.RECAST[spell.element]
                end
            end
        elseif spell.skill=='精霊魔法' then
            if spell.ja == 'インパクト' then
                equip(sets.midcast['インパクト'])
            elseif spell.cast_time > 0.75 then
                equip(set_element(spell))
            end
        elseif spell.skill=='神聖魔法' or
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 0.75 then
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='弱体魔法' then
            if spell.ja:startswith('スリプ') or spell.ja == 'ブレクガ' then
                sets_equip = sets.midcast['スリプル']
            elseif spell.cast_time > 0.75 then
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
function isConserveMp()
    if buffactive['魔力の雫'] or buffactive['魔力の泉'] then
        return false
    end
    --MP40%以下、または武器ロックなしのときは無条件にMP節約
    if player.vitals.mpp < 40 or lock_weapon == false then
        return true
    end
    local recast = windower.ffxi.get_ability_recasts()
    --[49] = {id=49,en="Convert",ja="コンバート",action_id=83},
    if player.sub_job == '赤' then
        if recast[49] and recast[49] > 0 then
            --リキャスト待ち
            if player.vitals.tp > 1000 then
                local minmpp = 100 - 30*(player.vitals.tp/1000)
                if player.vitals.mpp > minmpp then
                    return false
                end
            end
        else
            return false
        end
    end
    return true
end
function set_element(spell)
    local sets_equip = nil
    
    if sets.midcast.element.mode ~= 'VW' then
        if buffactive['精霊の印'] or buffactive['サテルソーサリー'] then
            sets_equip = sets.midcast.element['FULL']
        else
            sets_equip = sets.midcast.element[sets.midcast.element.mode]
        end
        if not isConserveMp() then
            sets_equip = set_combine(sets_equip, sets.midcast.element['NOTCONSERVE'])
        end
        if sets.equip.obi.weathers:contains(spell.element) then
            --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
            if world.weather_element == spell.element 
                or world.day_element == spell.element
                or buffactive[sets.equip.obi.buffs[spell.element]] then
                if sets.equip.obi[spell.element] ~= nil then
                    --add_to_chat(8, '属性一致→帯使用')
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
    if mb and os.time() - mb.time < 5 and mb.element[spell.element] then
        windower.add_to_chat(8, 'MBモード！！！！'..spell.element)
        sets_equip = set_combine(sets_equip, sets.midcast.element.MBURST)
    end
    if jb_flag then
        sets_equip = set_combine(sets_equip, {back='メシストピンマント',})
    end
    
    return sets_equip
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        local target = windower.ffxi.get_mob_by_target('t')
        if target and 
            (target.name == 'Perfidien' or target.name == 'Plouton') then
            equip(sets.precast.FC.element)
        else
            equip(sets.aftercast.idle)
        end
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
    local args = command:split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
            if #args == 1 then
                --windower.add_to_chat(123,'lock')
                local cmd = 'input /echo lock;'
                local subcmd = ''
                for key,val in pairs(sets.equip['LOCK'])
                do
                    if val ~= empty then
                        if key == 'sub' then
                            subcmd = 'wait 1;input /equip '..key..' '..val..';'
                        else
                            cmd = cmd..'input /equip '..key..' '..val..';'
                        end
                    end
                end
                --equip(sets.equip['LOCK'])
                if subcmd then
                    cmd = cmd..subcmd
                end
                cmd = cmd..'wait 1;input /lockstyle on'
                disable('main','sub','ammo','range')
                my_send_command(cmd)
                lock_weapon = true
            else
                windower.add_to_chat(123,'lock '..args[2])
                disable(args[2])
            end
        elseif args[1] == 'unlock' then
            if #args == 1 then
                windower.add_to_chat(123,'unlock')
                enable('main','sub','ammo','range')
                lock_weapon = false
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
                args[2] = args[2]:upper()
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
                elseif param == 'idle_fc' then
                    windower.add_to_chat(123,'FC装備待機')
                    sets.aftercast.idle = sets.precast.FC.element
                elseif param == 'cure' then
                   windower.add_to_chat(123,'set to idle_cure')
                    sets.aftercast.idle = sets.precast['ケアル']
                end
                equip(sets.aftercast.idle)
            end
        elseif args[1] == 'stunmode' then
            if #args == 1 then
                if sets.precast['スタン'] == sets.equip['スタン'] then
                    windower.add_to_chat(123,'スタン：魔命1')
                    sets.precast['スタン'] = sets.equip['スタン魔命1']
                elseif sets.precast['スタン'] == sets.equip['スタン魔命1'] then
                    windower.add_to_chat(123,'スタン：魔命2')
                    sets.precast['スタン'] = sets.equip['スタン魔命2']
                else
                    windower.add_to_chat(123,'スタン')
                    sets.precast['スタン'] = sets.equip['スタン']
                end
            else
                if sets.equip[args[2]] ~= nil then
                    windower.add_to_chat(123,'スタン：'..args[2])
                    sets.precast['スタン'] = sets.equip[args[2]]
                end
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
                jb_flag = false
            else
                windower.add_to_chat(123, '待機:背中＝メシストピンマント')
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                jb_flag = true
            end
        elseif args[1] == 'move' then
            equip(set_move(sets.aftercast.idle))
        elseif args[1] == 'si' then
            my_send_command('mogmaster si blm')
        elseif args[1] == 'setmb' then
            windower.add_to_chat(123, 'MB mode')
    	    mb = {
    	        flag = true,
    	        time = os.time(),
    	        count = 0,
    		    element = {
    		        ['火'] = true,
    		        ['風'] = true,
    		        ['雷'] = true,
    		        ['光'] = true,
    		        ['闇'] = true,
    		        ['土'] = true,
    		        ['氷'] = true,
    		    },
    		}
        end
    end
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        elseif args[1] == 'assist' then
            if args[2] == 'on' then
                assist = true
            elseif args[2] == 'off' then
                assist = false
            else
                if assist then
                    local cmd = 'send @others gs c ra '..args[2]..' '..tostring(player.target.id)
                    add_to_chat(123, 'cmd='..cmd)
                    my_send_command(cmd)
                else 
                    add_to_chat(123, 'assist=off')
                end
            end
        elseif args[1] == 'content' then
            local param = args[2]:lower()
            if param == 'jb' then
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                my_send_command('gs c idle idle_def;gs c elementmode full;gs c lock')
                jb_flag = true
            elseif param == 'bc' then
                my_send_command('gs c idle idle_def;gs c elementmode full;gs c lock')
            end
        elseif args[1] == 'getbuff' then
            local param = tonumber(args[2])
            get_buff(param)
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
                debugf:append(space2..key..' is '..tostring(type(val))..'\n')
            end
        end
        debugf:append(spaces..'}--end of '..comment..'\n')
    elseif type(t) == 'number' or type(t) == 'string' then
        debugf:append(spaces..comment..' ="'..t..'"\n')
    elseif type(t) == 'boolean' then
        debugf:append(spaces..comment..' ='..tostring(t)..'\n')
    else
        debugf:append(spaces..comment..' type is '..tostring(type(t))..'\n')
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
    _my_send_command(cmd)
    --send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
include('lib/counter.lua')
