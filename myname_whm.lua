function get_sets()
    set_language('japanese')
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
--pre_BASE
    local pre_base ={
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="ＭＫジュバ+1",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="アートシクロップス",
        feet="ケロナブーツ",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ+1",
    }
    local pre_low = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="ＭＫジュバ+1",
    }
    local mid_base = pre_base
    
    --光属性
    local pre_light = set_combine(pre_base, {main="アーカI",})
    local mid_light = set_combine(mid_base, {main="アーカII",})
    local pre_healing = set_combine(pre_light, {legs="ＯＲパンタロン+2",})
    local mid_healing = set_combine(pre_light, {head="ＯＲキャップ+2",legs="ＯＲパンタロン+2",}) 
    --風属性
    local pre_wind = set_combine(pre_base, {main="バユバタI",})
    local mid_wind = set_combine(mid_base, {main="バユバタII",})

    --土属性
    local pre_earth = set_combine(pre_base, {main="ビシュラバI",})
    local mid_earth = set_combine(mid_base, {main="ビシュラバII",})
    local pre_stoneskin = set_combine(pre_earth,{head="ウムシクハット"})

    --強化
    local enhance = {
        main="麒麟棍",
        sub="フルキオグリップ",
        range="オウレオール",
        head="ウムシクハット",
        body="アンフルローブ",
        hands="ダイナスティミトン",
        legs="パエティパンタロン",
        feet="ＯＲダックビル+2",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ロケイシャスピアス",
        left_ring="メディアトルリング",
        right_ring="サンゴマリング",
        back="メンディングケープ",
    }
    local baXX = set_combine(enhance, {body="ＯＲブリオー+2"})
    local protectshell = set_combine(mid_light, 
        {legs="パエティパンタロン", feet='ＰＩダックビル+1',right_ring="シェルターリング"})
--CURE
    local cure ={
        main="タマシチ",
        sub="玄武盾",
        ammo="インカントストーン",
        head="ＧＥカウビーン+1",
        body="ＯＲブリオー+2",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="シファヒジパンツ",
        feet="ケアルクロッグ",
        neck="アケソチョーカー",
        waist="ウィトフルベルト",
        left_ear="ラウンデルピアス",
        right_ear="ノーヴィアピアス",
        left_ring="プロリクスリング",
        right_ring="クチェクラリング",
        back="パートリケープ",
    }
    local cure2 = set_combine(cure,
        {
            body="ＧＥブリオー+1",
        })
    if player.sub_job == '赤' then
        cure = set_combine(cure, {left_ear="胡蝶のイヤリング",feet='ＰＩダックビル+1'})
    end
    local midcure = set_combine(cure,
        {
            back="メンディングケープ",
        })
    
--弱体
    local enfeebling = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="ヴァニアコタルディ",
        hands="ルリッドミトン",
        legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="ワイケトルク",
        waist="オヴェイトロープ",
        left_ear="ライストームピアス",
        right_ear="サイストームピアス",
        left_ring="メディアトルリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
--神聖
    local divine = enfeebling
--STUN
    local stun = {
            main={ name="レブレイルグ+2", augments={'DMG:+14','MND+1','Mag. Acc.+25',}},
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="ヴァニアコタルディ",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="アートシクロップス",
        feet="ケロナブーツ",
        neck="オルンミラトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ+1",
    }
    --待機時の装備（リフレ装備とかカット装備とか)
    local idle = {
        main="タマシチ",
        sub="玄武盾",
        range="オウレオール",
        head="槌の髪飾り",
        body="ＧＥブリオー+1",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="ナレストルーズ",
        feet="ヘラルドゲートル",
        neck="ワイケトルク",
        waist="オヴェイトロープ",
        right_ear="ロケイシャスピアス",
        left_ear="胡蝶のイヤリング",
        left_ring="メディアトルリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
    local idle_healing = set_combine(idle, 
        {
        main="ブンウェルスタッフ",
        feet="ケロナブーツ",
        });
   local idle_def = set_combine(idle, 
        {
        head="ＧＥカウビーン+1",
        legs="シファヒジパンツ",
        feet="ＧＥガロッシュ+1",
        neck="黄昏の光輪",
        left_ring="守りの指輪",
        right_ring="ダークリング",
        right_ear="驕慢の耳",
        back="チェビオットケープ",
        });
    
    sets.precast = {}
    sets.precast['ケアル']= cure
    sets.precast['ヘイスト'] = pre_wind
    sets.precast['回復魔法'] = pre_healing
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
    sets.midcast['ケアル'] = midcure
    sets.midcast['強化魔法'] = enhance
    sets.midcast['プロシェル'] = protectshell
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['回復魔法'] = mid_healing
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast.RECAST = {}
    sets.midcast.RECAST['光'] =mid_light
    sets.midcast.RECAST['闇'] =mid_base
    sets.midcast.RECAST['風'] = mid_wind
    sets.midcast.RECAST['土'] = mid_earth
    sets.midcast.RECAST['雷'] = mid_base
    sets.midcast.RECAST['水'] = mid_base
    sets.midcast.RECAST['火'] = mid_base
    sets.midcast.RECAST['氷'] = mid_base
    sets.aftercast={}
    sets.aftercast.idle = nil
    sets.equip = {}
    sets.equip['スタン'] = stun
    sets.equip['強化魔法'] = enhance
    sets.equip['ケアル'] = cure
    sets.equip['FC_WIND'] = pre_wind
    sets.equip['FC_LIGHT'] = pre_light
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['HEALING'] = idle_healing
    

    send_command('input /macro book 2;wait .2;input /macro set 1')
    bindKeys(true)    
    
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
        send_command('bind ^, gs c idle')
        send_command('bind ^[ gs c lock')
        send_command('bind ^] gs c unlock')
    else
        windower.add_to_chat(123,'unbind key')
        send_command('unbind ^,')
        send_command('unbind ^[')
        send_command('unbind ^]')
    end
end
function file_unload()
    bindKeys(false)
end

function pretarget(spell)
end
function precast(spell)
    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 3 then
            equip(sets.precast.FC[spell.element])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        --windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                --windower.add_to_chat(123,'debug: cast cure.')
                if buffactive['ハートオブミゼリ'] then
                    equip(sets.precast['ケアル'],{body="ＧＥブリオー+1",})
                else
                    equip(sets.precast['ケアル'])
                end
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
                    equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['バ系'])
                end
            elseif spell.cast_time > 3 then
                equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法'then
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
    if spell.type == 'JobAbility' then
    elseif spell.type == 'Ninjutsu' then
        if spell.cast_time > 3 then
            equip(sets.midcast.RECAST[spell.element])
        end
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'ヘイスト' then
            equip(sets.midcast['ヘイスト'])
        elseif spell.skill=='回復魔法' then
            if string.find(spell.name, 'ケアル') then
                if buffactive['ハートオブミゼリ'] then
                    equip(sets.midcast['ケアル'],{body="ＧＥブリオー+1",})
                else
                    equip(sets.midcast['ケアル'])
                end
            elseif spell.name:find('レイズ') then
                equip(sets.midcast.RECAST[spell.element])
            elseif spell.cast_time > 3 then
                --windower.add_to_chat(123,'equip midcast healingmagic')
                equip(sets.midcast[spell.skill])
            else
                --何もしない
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 3 then
                    equip(sets.midcast['バ系'])
                end
            elseif (spell.name == 'ストンスキン' 
                    or spell.name == 'ファランクス'
                    or spell.name:startswith('アディ'))
                and sets.midcast[spell.skill] ~= nil then
                equip(sets.midcast['強化魔法'])
            elseif spell.name:startswith('プロテ') or
                spell.name:startswith('シェル') then
                equip(sets.midcast['プロシェル'])
            elseif spell.name == 'イレース' then
                equip(sets.midcast['回復魔法'])
            elseif spell.cast_time > 3 then
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法'then
            if spell.cast_time > 3 then
                equip(sets.midcast[spell.skill])
            end
        elseif spell.cast_time > 3 then
            equip(sets.midcast.RECAST[spell.element])
        end
    end
end
function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
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