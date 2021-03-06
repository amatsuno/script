function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
    --timersで監視する歌を列挙
    watchtime_spells = T{
         '猛者のメヌエットV','猛者のメヌエットIV','猛者のメヌエットIII','猛者のメヌエットII','猛者のメヌエット'
        ,'栄光の凱旋マーチ','無敵の進撃マーチ','弓師のプレリュード','狩人のプレリュード'
        ,'剣豪のマドリガル','剣闘士のマドリガル'
        ,'魔道士のバラードIII','魔道士のバラードII','魔道士のバラード'
        ,'警戒のスケルツォ','ヘイスト'
    }
--FC_BASE
    local pre_song_base ={
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        head="フィリキャロ",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="ゲンデサスパッツ",
        feet="コールレークサボ",
        neck="オルンミラトルク",
        waist="アエドベルト",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }
    local pre_song_low = set_combine(
        pre_song_base,
        {
                main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
            body="ＢＲジュスト+1",
        })
    local pre_magic_base ={
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        head="ナティラハット",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="アートシクロップス",
        feet="ケロナブーツ",
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="ダークリング",
        back="スイスケープ+1",
    }
    local pre_song_fire = set_combine(pre_song_base, {main="アターI"})
    local pre_song_light = set_combine(pre_song_base, {main="アーカI"})
    local pre_song_thunder = set_combine(pre_song_base, {main="アパマジャI"})
    local pre_song_wind = set_combine(pre_song_base, {main="バユバタI"})
    local pre_song_earth = set_combine(pre_song_base, {main="ビシュラバI"})
    
    local pre_magic_fire = set_combine(pre_magic_base, {main="アターI"})
    local pre_magic_light = set_combine(pre_magic_base, {main="アーカI"})
    local pre_magic_thunder = set_combine(pre_magic_base, {main="アパマジャI"})
    local pre_magic_wind = set_combine(pre_magic_base, {main="バユバタI"})
    local pre_magic_earth = set_combine(pre_magic_base, {main="ビシュラバI"})
    
    local mid_base = pre_base
--ナイトル
    local night_trou = {
        body="ＢＤジュストコル+2",
        legs="ＢＩキャニオンズ+1",
        feet="ＢＩスリッパー+1",
    }
--ピーアン
    local Paeon = {
        range="ダウルダヴラ",
        head="ＢＩラウンドリト+1",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="ゲンデサスパッツ",
        feet="ＢＩスリッパー+1",
        neck="ウィンドトルク",
        waist="アエドベルト",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="ラプソドスケープ",
}
--味方うたの基本パターン
    local buffsong_base = {
        main="レガートダガー",
        sub="玄武盾",
        range="ギャッラルホルン",
        head="ＢＩラウンドリト+1",
        body="フィリオングルリヌ",
        hands="ＧＥゲージ+1",
        legs="ＢＩキャニオンズ+1",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="ラプソドスケープ",
    }
--マーチ
    local march = set_combine(buffsong_base, {hands="フィリマンシェト",})
--メヌ
    local  minuet = set_combine(buffsong_base, {body="フィリオングルリヌ",})

--マド
    local Madrigal = set_combine(buffsong_base, {head="フィリキャロ",})
--プレ
    local Prelude = set_combine(buffsong_base,
        {legs="ＭＫシャルワ+1",})
--バラ
    local Ballad = set_combine(buffsong_base, {legs="フィリラングラヴ",})
    local Ballad1 = Ballad
    
--スケルツォ
    local Scherzo = set_combine(buffsong_base,
        {legs="ＭＫシャルワ+1",feet="フィリコテュルヌ",})
--マズルカ
    local mazurka = {
        main="バユバタII",
        sub="ビビドストラップ",
        range="ダウルダヴラ",
        body="フィリオングルリヌ",
        legs="ＭＫシャルワ+1",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="ラプソドスケープ",
    }
    local otherSongs = set_combine(buffsong_base,
        {legs="ＭＫシャルワ+1",})
    --下地歌用楽器
    local basesong={
        range="ダウルダヴラ",
        neck="オルンミラトルク",
        head="ナティラハット",
        hands="ＧＥゲージ+1",
        legs="フィリラングラヴ",
        feet="コールレークサボ",
        back="スイスケープ+1",
        waist="ニヌルタサッシュ",
    }
        
    --強化
    local enhance = {
    }
    
--CURE
    local cure ={
        main="アーカIV",
        sub="ビビドストラップ",
        range="ダウルダヴラ",
        head="ＧＥカウビーン+1",
        body="ＧＥブリオー+1",
        hands="ゲンデサゲージ",
        legs="ゲンデサスパッツ",
        feet="ＧＥガロッシュ+1",
        neck="黄昏の光輪",
        waist="アエドベルト",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="ラプソドスケープ",
    }
--弱体
    local enfeebling = {
    }
--精霊
    local element_acc={
    }
--敵うた
    local bard_acc = {
        main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        range="ギャッラルホルン",
        sub="メフィテスグリップ",
        head="ＢＩラウンドリト+1",
        body="ＢＲジュスト+1",
        hands="ＢＲカフス+1",
        legs="ＢＩキャニオンズ+1",
        feet="アートシクブーツ",
        neck="ウィンドトルク",
        waist="オヴェイトロープ",
        left_ear="エンチャンピアス+1",
        right_ear="グアチピアス",
        left_ring="サンゴマリング",
        right_ring="ウェーザーリング",
        back="ラプソドスケープ",
    }
    local finale = set_combine(bard_acc,
        {
        hands="ＧＥゲージ+1",
        legs="フィリラングラヴ",
        feet="コールレークサボ",
        right_ear="ロケイシャスピアス",
        left_ear="胡蝶のイヤリング",
        left_ring="プロリクスリング",
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
--待機装備
    local idle = {
        head="槌の髪飾り",
        range="ギャッラルホルン",
        body="ＧＥブリオー+1",
        legs="ナレストルーズ",
        feet="フィリコテュルヌ",
        left_ear="胡蝶のイヤリング",
    }
    local idle_def = set_combine(idle, 
        {
        main="アーススタッフ",
        head="ＢＩラウンドリト+1",
        body="ＢＲジュスト+1",
        hands="ＧＥゲージ+1",
        legs="ＢＩキャニオンズ+1",
        feet={ name="ＧＥガロッシュ+1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Cure" spellcasting time -3%',}},
        neck="黄昏の光輪",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="ラプソドスケープ",
        });
    local idle_def2 = set_combine(idle_def, 
        {
        head="ＧＥカウビーン+1",
        body="ＧＥブリオー+1",
        legs="ＧＥスパッツ+1",
        });
    
    sets.precast = {}
    sets.precast.JA={}
    sets.precast.JA['ナイトル'] = night_trou
    sets.precast['ケアル']= pre_magic_light
    sets.precast['ヘイスト'] = pre_magic_wind
    sets.precast['ストンスキン'] = pre_magic_base
    sets.precast.FC = {}
    sets.precast.FC.song = {}
    sets.precast.FC.song['光'] = pre_song_light
    sets.precast.FC.song['闇'] = pre_song_base
    sets.precast.FC.song['風'] = pre_song_wind
    sets.precast.FC.song['土'] = pre_song_earth
    sets.precast.FC.song['雷'] = pre_song_thunder
    sets.precast.FC.song['水'] = pre_song_base
    sets.precast.FC.song['火'] = pre_song_fire
    sets.precast.FC.song['氷'] = pre_song_base
    sets.precast.FC.song['low'] = pre_song_low

    sets.precast.FC.magic = {}
    sets.precast.FC.magic['光'] = pre_magic_light
    sets.precast.FC.magic['闇'] = pre_magic_base
    sets.precast.FC.magic['風'] = pre_magic_wind
    sets.precast.FC.magic['土'] = pre_magic_earth
    sets.precast.FC.magic['雷'] = pre_magic_thuner
    sets.precast.FC.magic['水'] = pre_magic_base
    sets.precast.FC.magic['火'] = pre_magic_fire
    sets.precast.FC.magic['氷'] = pre_magic_base
    sets.midcast = {}
    sets.midcast.basesong=false
    sets.midcast['強化魔法'] = enhance
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['ピーアン'] = Paeon
    sets.midcast['マーチ'] = march
    sets.midcast['メヌエット'] = minuet
    sets.midcast['マドリガル'] = Madrigal
    sets.midcast['マズルカ'] = mazurka
    sets.midcast['プレリュード'] = Prelude
    sets.midcast['スケルツォ'] = Scherzo
    sets.midcast['バラード'] = Ballad
    sets.midcast['バラードI'] = Ballad1
    sets.midcast['フィナーレ'] = finale
    sets.midcast['other'] = otherSongs
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_base
    sets.midcast['ストンスキン'] = enhance
    sets.midcast['敵歌'] = bard_acc
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
    sets.aftercast.skip = false
    sets.aftercast.idle = nil    
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['IDLE_DEFMG'] = idle_def2
    sets.equip['BASESONG'] = basesong
    sets.equip.obi = obi
    
    send_command('input /macro book 5;wait .2;input /macro set 1')

    bindKeys(true)    
    --歌残り時間監視タイマー
	timer_reg = {}
    
    refresh_equip()
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
        send_command('bind ^u gs c basesong')
        send_command('bind ^o gs c pp')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^,')
        send_command('unbind ^[')
        send_command('unbind ^]')
        send_command('unbind ^u')
        send_command('unbind ^o')
    end
end
function file_unload()
    bindKeys(false)
end

function pretarget(spell)
    if spell.type == 'BardSong' 
        and spell.target.type 
        and spell.target.type == 'PLAYER' 
        and not buffactive['ピアニッシモ'] 
        and not spell.target.charmed then
        windower.add_to_chat(8,'---------- ピアニッシモがない！ -----------------------')
        cancel_spell()
        return
    end
end

function precast(spell)
    --myGetProperties(spell)
    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
        if spell.name == 'ナイチンゲール'
            or spell.name == 'トルバドゥール' 
            or spell.name == 'ソウルボイス' then
            equip(sets.precast.JA['ナイトル'])
        end
    elseif spell.type == 'BardSong' then
        if buffactive['ナイチンゲール']  then
            equip(set_song(spell))
            sets.aftercast.skip = true
        elseif spell.target.type == 'MONSTER' then
            equip(sets.precast.FC.song['low'])
            --equip(set_song(spell))
        else
            equip(sets.precast.FC.song[spell.element])
        end
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 0.75 then
            equip(sets.precast.FC.magic[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
        cancel_buff(spell)
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        --windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC.magic[spell.element])
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 0.75 then
                    equip(sets.precast.FC.magic[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.name == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC.magic[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
            cancel_buff(spell)
        elseif spell.cast_time > 0.75 then
            equip(sets.precast.FC.magic[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    end
end

function midcast(spell)
    if ignore_spells:contains(spell.name) then return end
    local sets_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'BardSong' then
        if buffactive['ナイチンゲール'] then
            --何もしない
        else
            equip(set_song(spell))
        end
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 0.75 then
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
            elseif spell.cast_time > 0.75 then
                windower.add_to_chat(123,'equip midcast healingmagic')
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill== '強化魔法' then
            if string.startswith(spell.name, 'バ')
               or spell.name == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.name == 'ストンスキン' then
                sets_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 0.75 then
                sets_equip = sets.midcast.RECAST[spell.element]
            end
        else
            sets_equip = sets.midcast.RECAST[spell.element]
        end
    end
    
    if sets_equip ~= nil then
        equip(sets_equip)
    end
end
function set_song(spell)
    local set_equip = nil
    if spell.name:find('ピーアン') then
        set_equip = sets.midcast['ピーアン']
    elseif spell.name:find('メヌエット') then
        set_equip = sets.midcast['メヌエット']
    elseif spell.name:find('マーチ') then
        set_equip = sets.midcast['マーチ']
    elseif spell.name:find('マドリガル') then
        set_equip = sets.midcast['マドリガル'] 
    elseif spell.name:find('スケルツォ') then
        set_equip= sets.midcast['スケルツォ'] 
    elseif spell.name:find('プレリュード') then
        set_equip= sets.midcast['プレリュード'] 
    elseif spell.name:find('マズルカ') then
        set_equip= sets.midcast['マズルカ'] 
    elseif spell.name == '魔道士のバラードIII'
        or spell.name == '魔道士のバラードII' then
        set_equip = sets.midcast['バラード']
    elseif spell.name == '魔道士のバラード' then
        set_equip = sets.midcast['バラードI']
    elseif spell.name == '魔法のフィナーレ' then
        set_equip = sets.midcast['フィナーレ']
    elseif spell.target.type ~= 'MONSTER' then
        set_equip = sets.midcast['other']
    else
        set_equip = sets.midcast['敵歌']
    end
    if sets.midcast.basesong then
        if spell.target.type ~= 'MONSTER' and not spell.name:find('マーチ') then
            set_equip = set_combine(set_equip, sets.equip.BASESONG)
        elseif spell.name:find('ララバイ') then
            set_equip = set_combine(set_equip, {range="ダウルダヴラ",})
        end
        sets.midcast.basesong = false
    end
    return set_equip
end
function set_element(spell)
    return sets.midcast.RECAST[spell.element]
end

function aftercast(spell)
    --監視対象の歌の監視状態を更新
    if not spell.interrupted then
        if watchtime_spells:contains(spell.name) then
            update_timer(spell)
        end
    end
    --詠唱完了後着替えが指定されてたら着替えを実行（ただしナイトル時は着替えない）
    if sets.aftercast.idle ~= nil and sets.aftercast.skip == false then
      equip(sets.aftercast.idle)
    end
    sets.aftercast.skip = false
end
function update_timer(spell)
	local t = os.time()
    local timer_name = spell.name
    if spell.type ~= 'BardSong' then
        timer_name = timer_name..'['..spell.target.name..']'
    end
	-- 効果時間切れの歌を削除
	local tempreg = {}
	for i,v in pairs(timer_reg) do
		if v < t then tempreg[i] = true end
	end
	for i,v in pairs(tempreg) do
		timer_reg[i] = nil
	end
	
	local dur = calculate_duration(spell)
	windower.add_to_chat(0xCE, "効果時間 "..timer_name..' '..dur)
	if timer_reg[timer_name] then
	    --カスタムタイマーを操作するときはSJISに変換すると文字化けする！！
		send_command('timers delete "'..timer_name..'"')
		timer_reg[timer_name] = t + dur
		send_command('timers create "'..timer_name..'" '..dur..' down')
	else
		local maxsongs = 2
		if player.equipment.range == 'テルパンダー' then
			maxsongs = maxsongs+1
		end
		if buffactive['クラリオンコール'] then
			maxsongs = maxsongs+1
		end
		if maxsongs < table.length(timer_reg) then
			maxsongs = table.length(timer_reg)
		end
		windower.add_to_chat( 8, 'range '..player.equipment.range..' song '..maxsongs )
		
		if table.length(timer_reg) < maxsongs then
			timer_reg[timer_name] = t+dur
			send_command('timers create "'..timer_name..'" '..dur..' down')
		else
			local rep,repsong
			for i,v in pairs(timer_reg) do
				if t+dur > v then
					if not rep or rep > v then
						rep = v
						repsong = i
					end
				end
			end
			if repsong then
				timer_reg[repsong] = nil
				--send_command('timers delete "'..repsong..'"')
				timer_reg[timer_name] = t+dur
				send_command('timers create "'..timer_name..'" '..dur..' down')
			end
		end
	end
end
function calculate_duration(spell)
    if spell.type == 'BardSong' then
        local mult = 1.0
        if player.equipment.range == "ダウルダヴラ" then mult = mult + 0.25 end
        if player.equipment.range == "ギャッラルホルン" then mult = mult + 0.4 end
        if player.equipment.range == "エミネンフルート" then mult = mult + 0.2 end
        if player.equipment.neck == "アエドマティネ" then mult = mult + 0.1 end
        if player.equipment.feet == "ブリオソスリッパー" then mult = mult + 0.1 end
        if player.equipment.feet == "ＢＲスリッパー+1" then mult = mult + 0.11 end
        if player.equipment.body == "フィリオングルリヌ" then mult = mult + 0.1 end
        if player.equipment.legs == "ＭＫシャルワ+1" then mult = mult + 0.1 end
        if player.equipment.main == "レガートダガー" then mult = mult + 0.05 end
        --if player.equipment.main == "カルンウェナン" then mult = mult + 0.5 end
        
        if string.find(spell.name,'マーチ') then
            if player.equipment.hands == 'フィリマンシェト' then 
                mult = mult + 0.1
            end
            if player.equipment.range == 'ランゲレイク' then
                mult = mult + 0.3
            end
        end
        if string.find(spell.name,'メヌエット') then
            if player.equipment.body == "フィリオングルリヌ" then 
                mult = mult + 0.1 
            end
            if player.equipment.range == 'アポロフルート' then
                mult = mult + 0.3
            end
        end
        if string.find(spell.name,'マドリガル') then
            if player.equipment.head == "フィリキャロ" then 
                mult = mult + 0.1 
            end
            if player.equipment.range == 'カンタバンクホルン' then
                mult = mult + 0.3
            end
        end
        if string.find(spell.name,'プレリュード') then
            if player.equipment.range == 'カンタバンクホルン' then
                mult = mult + 0.3
            end
        end
        if string.find(spell.name,'バラード') then
            if player.equipment.legs == "フィリラングラヴ" then 
                mult = mult + 0.1 
            end
        end
        if string.find(spell.name,'スケルツォ') then
            if player.equipment.feet == "フィリコテュルヌ" then 
                mult = mult + 0.1 
            end
        end
        if buffactive['トルバドゥール'] then
            mult = mult*2
            windower.add_to_chat( 8, 'mult '..mult..' '..buffactive['トルバドゥール'] )
        end
        
        if string.find(spell.name,'スケルツォ') and buffactive['ソウルボイス'] then
            mult = mult*2
            windower.add_to_chat( 8, 'mult '..mult..' '..buffactive['ソウルボイス'] )
        elseif string.find(spell.name,'スケルツォ') and buffactive['マルカート'] then
            mult = mult*1.5
            windower.add_to_chat( 8, 'mult '..mult..' '..buffactive['マルカート'] )
        end
        
        return mult*120
    else
        return spell.duration
    end
end

function status_change(new,old)
end
--/console gs c equip XXXX
--sets.equip.XXXの装備に着替える
--/console gs c idle none
--詠唱完了後の着替えを中止する
--/console gs c idle idle
--詠唱完了後にリフレ装備に着替える
--/console gs c idle idle_def
--詠唱完了後に被ダメカット装備に着替える
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
        elseif args[1] == 'basesong' then
            if sets.midcast.basesong then
                windower.add_to_chat(123,'通常歌に戻します')
                sets.midcast.basesong=false
            else
                windower.add_to_chat(123,'次の歌を下地歌にします')
                sets.midcast.basesong=true
            end
        elseif args[1] == 'pp' then
            if not buffactive['ピアニッシモ'] then
                my_send_command('input /ja ピアニッシモ <me>')
            end
        elseif args[1] == 'refresh' then
            refresh_equip()
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
    if player.equipment.back == 'メシストピンマント' then
        disable('back')
    else
        enable('back')
    end
    if player.inventory['フルームベルト'] or player.wardrobe['フルームベルト'] then
        sets.equip['IDLE'].waist = "フルームベルト"
        sets.equip['IDLE_DEF'].waist = "フルームベルト"
        sets.equip['IDLE_DEFMG'].waist = "フルームベルト"
        windower.add_to_chat(123,'待機装備：フルームベルト')
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

windower.register_event('zone change',function (...)
	for i,v in pairs(timer_reg) do
		send_command('timers delete "'..i..'"')
	end
	timer_reg = {}
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
        windower.add_to_chat(8,"GearSwap (Debug Mode): "..tostring(message))
    end
end
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
