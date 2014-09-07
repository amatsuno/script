function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
    --timersで監視する歌を列挙
    watchtime_songs = T{
         '猛者のメヌエットV','猛者のメヌエットIV','猛者のメヌエットIII','猛者のメヌエットII','猛者のメヌエット'
        ,'栄光の凱旋マーチ','無敵の進撃マーチ','弓師のプレリュード','狩人のプレリュード'
        ,'剣豪のマドリガル','剣闘士のマドリガル'
        ,'魔道士のバラードIII','魔道士のバラードII','魔道士のバラード'
        ,'警戒のスケルツォ'
    }
--FC_BASE
    local pre_song_base ={
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
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
        left_ear="アエドピアス",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
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
        head="ＡＤキャロ+2",
        body="ＭＫジュバ+1",
        hands="ＧＥゲージ+1",
        legs="ゲンデサスパッツ",
        feet="ＢＩスリッパー+1",
        neck="ウィンドトルク",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
}
--マーチ
    local march = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＡＤラングラヴ+2",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
--メヌ
    local  minuet = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＡＤラングラヴ+2",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
--マド
    local Madrigal = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＡＤラングラヴ+2",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
--プレ
    local Prelude = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＭＫシャルワ+1",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
--バラ
    local Ballad = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＡＤラングラヴ+2",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
    local Ballad1 = Ballad
    
--スケルツォ
    local Scherzo = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＭＫシャルワ+1",
        feet="ＡＤコテュルヌ+2",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
--マズルカ
    local mazurka = {
        main="バユバタII",
        sub="ビビドストラップ",
        range="ダウルダヴラ",
        body="ＡＤオングルリヌ+2",
        legs="ＭＫシャルワ+1",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
    }
    local otherSongs = {
        main="レガートダガー",
        range="ギャッラルホルン",
        head="ＡＤキャロ+2",
        body="ＡＤオングルリヌ+2",
        hands="ＡＤマンシェト+2",
        legs="ＭＫシャルワ+1",
        feet="ブリオソスリッパー",
        neck="アエドマティネ",
        waist="アエドベルト",
        left_ear="ロケイシャスピアス",
        right_ear="アエドピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
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
        left_ear="アエドピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
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
        sub="メフィテスグリップ",
        head="ＢＩラウンドリト+1",
        body="ＢＲジュスト+1",
        hands="ＢＲカフス+1",
        legs="ＢＩキャニオンズ+1",
        feet="アートシクブーツ",
        neck="ウィンドトルク",
        waist="オヴェイトロープ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="メディアトルリング",
        right_ring="サンゴマリング",
        back="ラプソドスケープ",
    }
    local finale = set_combine(bard_acc,
        {
        hands="ＧＥゲージ+1",
        legs="ＡＤラングラヴ+2",
        feet={ name="ＧＥガロッシュ+1", augments={'Phys. dmg. taken -4%','Song recast delay -3',}},
        right_ear="ロケイシャスピアス",
        left_ear="胡蝶のイヤリング",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",})
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
        feet="ＡＤコテュルヌ+2",
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
        left_ring="守りの指輪",
        right_ring="ダークリング",
        back="チェビオットケープ",
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
    sets.equip.obi = obi
    
    send_command('input /macro book 5;wait .2;input /macro set 1')
    --歌残り時間監視タイマー
	timer_reg = {}
    
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
        if spell.cast_time > 3 then
            equip(sets.precast.FC.magic[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        --windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC.magic[spell.element])
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 3 then
                    equip(sets.precast.FC.magic[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.name == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC.magic[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.cast_time > 3 then
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
    elseif spell.type == 'BardSong' or spell.target.type == 'MONSTER' then
        if buffactive['ナイチンゲール'] then
            --何もしない
        elseif spell.target.type == 'MONSTER' then
            equip(set_song(spell))
        else
            equip(set_song(spell))
        end
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
            if string.startswith(spell.name, 'バ')
               or spell.name == 'ファランクス' then
                sets_equip = sets.midcast['強化魔法']
            elseif spell.name == 'ストンスキン' then
                sets_equip = sets.midcast['ストンスキン']
            elseif  spell.cast_time > 3 then
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
    return set_equip
end
function set_element(spell)
    return sets.midcast.RECAST[spell.element]
end

function aftercast(spell)
    --監視対象の歌の監視状態を更新
    if spell.type == 'BardSong' and not spell.interrupted then
        if watchtime_songs:contains(spell.name) then
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

	-- 効果時間切れの歌を削除
	local tempreg = {}
	for i,v in pairs(timer_reg) do
		if v < t then tempreg[i] = true end
	end
	for i,v in pairs(tempreg) do
		timer_reg[i] = nil
	end
	
	local dur = calculate_duration(spell)
	windower.add_to_chat(0xCE, "効果時間 "..spell.name..' '..dur)
	if timer_reg[spell.name] then
	    --カスタムタイマーを操作するときはSJISに変換すると文字化けする！！
		send_command('timers delete "'..spell.name..'"')
		timer_reg[spell.name] = t + dur
		send_command('timers create "'..spell.name..'" '..dur..' down')
	else
		local maxsongs = 2
		if player.equipment.range == 'ダウルダヴラ' then
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
			timer_reg[spell.name] = t+dur
			send_command('timers create "'..spell.name..'" '..dur..' down')
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
				timer_reg[spell.name] = t+dur
				send_command('timers create "'..spell.name..'" '..dur..' down')
			end
		end
	end
end
function calculate_duration(spell)
	local mult = 1.0
	if player.equipment.range == "ダウルダヴラ" then mult = mult + 0.25 end
	if player.equipment.range == "ギャッラルホルン" then mult = mult + 0.4 end
	if player.equipment.range == "エミネンフルート" then mult = mult + 0.2 end
	if player.equipment.neck == "アエドマティネ" then mult = mult + 0.1 end
	if player.equipment.feet == "ブリオソスリッパー" then mult = mult + 0.1 end
	if player.equipment.feet == "ＢＲスリッパー+1" then mult = mult + 0.11 end
	if player.equipment.body == "ＡＤオングルリヌ+2" then mult = mult + 0.1 end
	if player.equipment.legs == "ＭＫシャルワ+1" then mult = mult + 0.1 end
	if player.equipment.main == "レガートダガー" then mult = mult + 0.05 end
	--if player.equipment.main == "カルンウェナン" then mult = mult + 0.5 end
	
	if string.find(spell.name,'マーチ') then
	    if player.equipment.hands == 'ＡＤマンシェト+2' then 
	        mult = mult + 0.1
	    end
	    if player.equipment.range == 'ランゲレイク' then
	        mult = mult + 0.3
	    end
	end
	if string.find(spell.name,'メヌエット') then
	    if player.equipment.body == "ＡＤオングルリヌ+2" then 
	        mult = mult + 0.1 
	    end
	    if player.equipment.range == 'アポロフルート' then
	        mult = mult + 0.3
	    end
	end
	if string.find(spell.name,'マドリガル') then
	    if player.equipment.head == "ＡＤキャロ+2" then 
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
	    if player.equipment.legs == "ＡＤラングラヴ+2" then 
	        mult = mult + 0.1 
	    end
	end
	if string.find(spell.name,'スケルツォ') then
	    if player.equipment.feet == "ＡＤコテュルヌ+2" then 
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
            windower.add_to_chat(123,'lock')
            disable('main','sub','range','ammo')
        elseif args[1] == 'unlock' then
            windower.add_to_chat(123,'unlock')
            enable('main','sub','range','ammo')
        end
    end
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
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
