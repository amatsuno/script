function get_sets()
    set_language('japanese')
    ancient_spells = T{
        'トルネド','フリーズ','フレア','フラッド','バースト','クエイク',
        'トルネドII','フリーズII','フレアII','フラッドII','バーストII','クエイクII',
    }
    replace_magic = {
        ['ストンラ']='ストンガ',
        ['ストンラII']='ストンジャ',
        ['ウォタラ']='ウォタガ',
        ['ウォタラII']='ウォタジャ',
        ['エアロラ']='エアロガ',
        ['エアロラII']='エアロジャ',
        ['ファイラ']='ファイガ',
        ['ファイラII']='ファイジャ',
        ['ブリザラ']='ブリザガ',
        ['ブリザラII']='ブリザジャ',
        ['サンダラ']='サンダガ',
        ['サンダラII']='サンダジャ',
        --['ストーンVI']='ストンジャ',
        --['ウォータVI']='ウォタジャ',
        --['エアロVI']='エアロジャ',
        --['ファイアVI']='ファイジャ',
        --['ブリザドVI']='ブリザジャ',
        --['サンダーVI']='サンダジャ',
    } 
    watch_recast = T{
        'スタン','ドレイン','アスピル'
    }
    ignore_spells = T{
        'ディア','ディアII','ディアガ'
    }
--FC_BASE
    local pre_base ={
        --36
        main="ケラウノス",
        sub="ビビドストラップ",
        head="ハルスハット",            --8
        hands="ヘリオスグローブ",       --4
        body="ヘリオスジャケット",      --6
        legs="ヘリオススパッツ",        --3
        feet="ケロナブーツ",            --4
        waist="ニヌルタサッシュ",
        neck="オルンミラトルク",        --5
        left_ear="バーカロルピアス",    --3
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",            --3
    }
    local pre_low = {
        head="ナティラハット",
        legs="アートシクロップス",
    }
    local mid_base = pre_base
    
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
        head="ウムシクハト",
        body="アンフルローブ",
        feet="ルベウスブーツ",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        back="慈悲の羽衣",
    }
    local baXX = enhance
    local stoneskin = set_combine(enhance, {waist="ジーゲルサッシュ",})
    
--stun
    local stun = {
        main="ヴェナバラム",
        sub="ビビドストラップ",
        head="ナティラハット",
        body="ヴァニアコタルディ",
        hands="ヘリオスグローブ",
        legs="アートシクロップス",
        feet="アートシクブーツ",
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
        hands="ボクワスグローブ",
        legs="ナレストルーズ",
    }
--弱体
    local enfeebling = {
        main={ name="レブレイルグ+2", augments={'DMG:+6','CHR+4','Mag. Acc.+15',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="ＨＡコート+1",
        hands="ヘリオスグローブ",
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
    local dark_acc={
        main="ケラウノス",
        sub="ヴィサングリップ",
        neck="クアンプネックレス",
        head="ヘリオスバンド",
        body="ＳＰコート+1",
        hands="ヘリオスグローブ",
        legs="ＨＡパンツ+1",
        feet="ヘリオスブーツ",
        back="ベーンケープ",
        ammo="ファントムタスラム",
        waist="オティラサッシュ",
        left_ring="結氷の指輪",
        right_ring="アキュメンリング",
        left_ear="バーカロルピアス",
        right_ear="フリオミシピアス",
    }
--精霊
    local element_acc={
        main="ケラウノス",
        sub="ヴィサングリップ",
        neck="クアンプネックレス",
        head="ヘリオスバンド",
        body="ＳＰコート+1",
        hands="ヘリオスグローブ",
        legs="ＨＡパンツ+1",
        feet="ヘリオスブーツ",
        back="ベーンケープ",
        ammo="ファントムタスラム",
        waist="オティラサッシュ",
        left_ring="結氷の指輪",
        right_ring="アキュメンリング",
        left_ear="バーカロルピアス",
        right_ear="フリオミシピアス",
    }
    local element_attk = element_acc
    local element_fullattk = element_attk
    local impact=set_combine(element_acc, {head=empty, body="トワイライトプリス",})
    local element_mb = {}

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
        main="アーススタッフ",
        sub="Ｂ．ストラップ+1",
        head="ＨＡハット+1",
        body="ＨＡコート+1",
        hands="ＨＡカフス+1",
        legs="ＨＡパンツ+1",
        feet="ヘラルドゲートル",
        right_ear="血石のピアス",
    }
    local idle_def = set_combine(idle, 
        {
        feet="ＨＡサボ+1",
        neck="バイサカラー",
        left_ring="ダークリング",
        right_ring="ダークリング",
        back="チェビオットケープ",
        });
    local lock = {
        main="ケラウノス",
        sub="Ｂ．ストラップ+1",
        range=empty,ammo="ファントムタスラム",
    }
    
    sets.precast = {}
    sets.precast['ケアル']= pre_light
    sets.precast['スタン'] = stun
    sets.precast['ヘイスト'] = pre_wind
    sets.precast['ストンスキン'] = pre_stoneskin
    sets.precast['インパクト'] = impact
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
    sets.midcast['インパクト'] = impact
    sets.midcast['強化魔法'] = enhance
    sets.midcast['バ系'] = baXX
    sets.midcast['弱体魔法'] = enfeebling
    sets.midcast['神聖魔法'] = divine
    sets.midcast['暗黒魔法'] = dark_acc
    sets.midcast['ケアル'] = cure
    sets.midcast['ヘイスト'] = mid_wind
    sets.midcast['ストンスキン'] = stoneskin
    sets.midcast.element = {}
    sets.midcast.element.mode = 'ACC'
    sets.midcast.element['古代'] = element_acc
    sets.midcast.element['ACC'] = element_acc
    sets.midcast.element['ATTK'] = element_attk
    sets.midcast.element['FULL'] = element_fullattk
    sets.midcast.element['VW'] = pre_base
    sets.midcast.element['MBURST'] = element_mb
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
    sets.equip['スタンリキャ'] = stun_recast
    sets.equip['スタンFC'] = stun_fc
    sets.equip['強化魔法'] = enhance
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip.obi = obi
    sets.equip['LOCK'] = lock
    
    --enable('main','sub','ammo')
    rev_attk = { name="レブレイルグ+2", augments={'DMG:+7','"Mag.Atk.Bns."+24',}}
    send_command('input /macro book 5;wait .2;input /macro set 1')
    bindKeys(true)    
    refresh_equip()
    jb_flag = false
    follow=false
    halt=false
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
        send_command('unbind ^,')
        send_command('unbind ^/')
        send_command('unbind ^[')
        send_command('unbind ^]')
    end
end
function file_unload()
    enable('main','sub','ammo','range')
    bindKeys(false)
end
function pretarget(spell)
    --windower.add_to_chat(8,'pret follow='..tostring(follow)..'chkDsit='..tostring(chkDist()))
    if follow and chkDist()==false then
        if spell.type == 'WhiteMagic' 
            or spell.type == 'BlackMagic' 
            or spell.type == 'Geomancy' 
            then
            if halt == false and spell.target and spell.target.id then
                cancel_spell()
                halt=true
                my_send_command('flwl halt;wait 2;'
                    ..'input /ma '..spell.name..' '..spell.target.id
                    ..';wait '..spell.cast_time..';flwl cont')
            end
        end
    end
end

function precast(spell)
    --myGetProperties(spell)
    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        --windower.add_to_chat(123,'name='..spell.name..' skill='..spell.skill..' casttime='..spell.cast_time)
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                equip(sets.precast['ケアル'])
            elseif spell.name:find('レイズ') then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast[spell.skill])
            else
                equip(sets.midcast[spell.skill])
            end
        elseif spell.skill=='強化魔法' then
            if spell.name:startswith('バ') then
                if spell.cast_time > 0.75 then
                    equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
                else
                    equip(sets.midcast['強化魔法'])
                end
            elseif spell.name == 'ストンスキン' then
                equip(sets.precast['ストンスキン'])
                send_command('@wait 1.2;cancel 37')
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC[spell.element], {waist="ジーゲルサッシュ",})
            else
                equip(sets.midcast.RECAST[spell.element])
            end
            cancel_buff(spell)
        elseif spell.name == 'スタン' then
            equip(sets.precast['スタン'])
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                equip(sets.precast['インパクト'])
            elseif spell.cast_time > 1.5 then
                equip(sets.precast.FC[spell.element])
            elseif spell.cast_time > 0.75 then
                equip(sets.precast.FC.FC_LOW)
            else
                equip(set_element(spell))
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法' or 
               spell.skill=='暗黒魔法' then
            if spell.cast_time > 0.75 then
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
            elseif spell.cast_time > 0.75 then
                --windower.add_to_chat(123,'equip midcast healingmagic')
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
        elseif spell.skill=='精霊魔法' then
            if spell.name == 'インパクト' then
                equip(sets.midcast['インパクト'])
            elseif spell.cast_time > 0.75 then
                equip(set_element(spell))
            end
        elseif spell.skill=='弱体魔法' then
            if spell.cast_time > 0.75 then
                sets_equip = sets.midcast[spell.skill]
            end
        elseif spell.skill=='暗黒魔法' then
            if spell.cast_time > 0.75 then
                set_equip = sets.midcast[spell.skill]
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
    local sets_equip = nil
    
    if sets.midcast.element.mode ~= 'VW' then
        if ancient_spells:contains(spell.name) then
            sets_equip = sets.midcast.element['古代']
        elseif buffactive['精霊の印'] or buffactive['サテルソーサリー'] then
            sets_equip = sets.midcast.element['ATTK']
        else
            sets_equip = sets.midcast.element[sets.midcast.element.mode]
        end
        if buffactive['魔力の雫'] or buffactive['魔力の泉'] then
            sets_equip = set_combine(sets_equip, {body='ヴァニアコタルディ'})
        end
        if sets.equip.obi.weathers:contains(spell.element) then
            --天候が属性と一致するか、陣がかかってる場合、属性帯を使用
            if world.weather_element == spell.element 
                or buffactive[sets.equip.obi.buffs[spell.element]] then
                if sets.equip.obi[spell.element] ~= nil then
                    sets_equip = set_combine(sets_equip, 
                        sets.equip.obi[spell.element])
                end
             end
        end
    end
    if sets.equip.treasure 
        and sets.equip.treasure_spells:contains(spell.name) then
        sets_equip = set_combine(sets_equip, {waist="チャークベルト"})
    end
    if jb_flag then
        sets_equip = set_combine(sets_equip, {back='メシストピンマント',})
    end
    if mb and os.time() - mb.time < 9 and mb.element[spell.element] then
        windower.add_to_chat(8, 'MBモード！！！！'..spell.element)
        sets_equip = set_combine(sets_equip, sets.midcast.element.MBURST)
    end
    
    return sets_equip
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil then
        equip(sets.aftercast.idle)
    end
    if spell.type and type(spell.type) == 'string' 
        and spell.type:lower() ~= 'item' then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
    if halt then
        my_send_command('flwl cont')
        halt=false
    end
end

function status_change(new,old)
end

function refresh_equip()
    if player.equipment.back == 'メシストピンマント' then
        disable('back')
    else
        enable('back')
    end
end
function self_command(command)
    --local args = windower.from_shift_jis(command):split(' ')
    local args = command:split(' ')
    if #args >= 1 then
        if args[1] == 'lock' then
            equip(sets.equip['LOCK'])
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
        elseif args[1] == 'unlock' then
            windower.add_to_chat(123,'unlock')
            enable('main','sub','ammo','range')
        elseif args[1] == 'togglemain' then
            if type(sets.midcast.element['古代'].main) == 'string' and 
                sets.midcast.element['古代'].main == "ヴェナバラム" then
                windower.add_to_chat(0xCE,'main武器魔攻レヴ')
                sets.midcast.element['古代'].main = rev_attk
                sets.midcast.element['ACC'].main = rev_attk
                sets.midcast.element['ATTK'].main = rev_attk
                sets.midcast.element['FULL'].main = rev_attk
             else
                windower.add_to_chat(0xCE,'main武器ヴェナバラム')
                sets.midcast.element['古代'].main = "ヴェナバラム"
                sets.midcast.element['ACC'].main = "ヴェナバラム"
                sets.midcast.element['ATTK'].main = "ヴェナバラム"
                sets.midcast.element['FULL'].main = "ヴェナバラム"
             end
        elseif args[1] == 'treasure' then
            if sets.equip.treasure then
                sets.equip.treasure = false
                windower.add_to_chat(8,tostring('トレハンOFF'))
            else
                sets.equip.treasure = true
                windower.add_to_chat(8,tostring('トレハンON'))
            end
        elseif args[1] == 'jb' then
            if sets.equip.IDLE_DEF.back == 'メシストピンマント' then
                windower.add_to_chat(123, '待機:背中＝リパルスマント')
                sets.equip.IDLE_DEF.back = 'リパルスマント'
                jb_flag = false
            else
                windower.add_to_chat(123, '待機:背中＝メシストピンマント')
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                jb_flag = true
            end
        elseif args[1] == 'si' then
            windower.add_to_chat(8,'鞄整理')
            my_send_command('mogmaster si blm')
        elseif args[1] == 'refresh' then
            refresh_equip()
        elseif args[1] == 'setmb' then
            set_mb()
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
        elseif args[1] == 'recast' then
            local spellid = tonumber(args[2])
            local spellname = " "
            if #args[1] >= 3 then
                spellname = args[3]
            end
            local recast = windower.ffxi.get_spell_recasts()
            windower.add_to_chat(123,'recast::'..spellname..'('..spellid..')='..recast[spellid] / 60)
            my_send_command('@wait '..tostring(recast[spellid] / 60)..';input /echo '..spellname..'詠唱可能')
        elseif args[1] == 'ra' then
            if #args >= 3 then
                local castspell=args[2]
                if replace_magic[castspell] then
                    castspell = replace_magic[castspell]
                end
                local cmd = nil
                cmd = 'input /ma '..castspell..' '..args[3]
                if follow and chkDist() == false then
                    halt=true
                    cmd = 'flwl halt;wait 2;'..cmd
                end
                my_send_command(cmd)
            end
        elseif args[1] == 'content' then
            local param = args[2]:lower()
            if param == 'jb' then
                sets.equip.IDLE_DEF.back = 'メシストピンマント'
                jb_flag = true
                my_send_command('gs c idle idle_def;gs c elementmode full;')
            elseif param == 'bc' then
                my_send_command('gs c idle idle_def;gs c elementmode full;')
                jb_flag = false
            end
        elseif args[1] == 'getbuff' then
            local param = tonumber(args[2])
            get_buff(param)
        elseif args[1] == 'follow' then
            if args[2] == 'start' then
                follow=true
                windower.add_to_chat(8, '追跡モード')
                my_send_command('flwl s')
            else
                windower.add_to_chat(8, '待機モード')
                if follow then
                    my_send_command('flwl e')
                end
                follow=false
            end
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
function my_send_command(cmd)
    _my_send_command(cmd)
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
        windower.add_to_chat(8,"GearSwap (Debug Mode): "..
            tostring(message))
    end
end
include('script/script/common.lua')
include('lib/counter.lua')