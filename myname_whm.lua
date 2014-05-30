function get_sets()
    set_language('japanese')
--FC_BASE
    local fc_base ={
        main=empty,
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="ＭＫジュバ+1",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="アートシクロップス",
        feet="ケロナブーツ",
        neck="オリゾンロケット",
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
        body="ＭＫジュバ+1",
    }
    local frc_base = fc_base
    
    --光属性
    local fc_light = set_combine(fc_base, {main="アーカI",})
    local frc_light = set_combine(frc_base, {main="アーカII",})
    local fc_healing = set_combine(fc_light, {legs="ＯＲパンタロン+2"})
    
    --風属性
    local fc_wind = set_combine(fc_base, {main="バユバタI",})
    local frc_wind = set_combine(frc_base, {main="バユバタII",})

    --土属性
    local fc_earth = fc_base 
    local frc_earth = frc_base

    --強化
    local enhance = {
        main="麒麟棍",
        sub="フルキオグリップ",
        range="オウレオール",
        head="ウムシクハット",
        body="アンフルローブ",
        hands="ダイナスティミトン",
        legs="ＣＲパンタロン+2",
        feet="ＯＲダックビル+2",
        neck="コロッサストルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ロケイシャスピアス",
        left_ring="バルラーンリング",
        right_ring="サンゴマリング",
        back="慈悲の羽衣",
    }
    local baXX = set_combine(enhance, {body="ＯＲブリオー+2"})

--CURE
    local cure ={
        main="アーカIV",
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ゲンデサカウビーン",
        body="ＯＲブリオー+2",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="ＯＲパンタロン+2",
        feet="ケアルクロッグ",
        neck="アケソチョーカー",
        waist="ウィトフルベルト",
        left_ear="ラウンデルピアス",
        right_ear="ノーヴィアピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="パートリケープ",
    }
--弱体
    local enfeebling = {
        main={ name="レブレイルグ+2", augments={'DMG:+7','CHR+1','Mag. Acc.+11',}},
        sub="メフィテスグリップ",
        range="オウレオール",
        head="アートシクハット",
        body="ヴァニアコタルディ",
        hands="ルリッドミトン",
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
--神聖
    local divine = enfeebling
--STUN
    local stun = {
        main={ name="レブレイルグ+2", augments={'DMG:+7','CHR+1','Mag. Acc.+11',}},
        sub="ビビドストラップ",
        ammo="インカントストーン",
        head="ナティラハット",
        body="ヴァニアコタルディ",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="アートシクロップス",
        feet="ケロナブーツ",
        neck="オリゾンロケット",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="胡蝶のイヤリング",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="スイスケープ",
    }
    --待機時の装備（リフレ装備とかカット装備とか)
    local idle = {
        main="アーススタッフ",
        sub="メフィテスグリップ",
        range="オウレオール",
        head="槌の髪飾り",
        body="ゲンデサブリオー",
        hands={ name="ゲンデサゲージ", augments={'Phys. dmg. taken -4%','"Cure" potency +8%',}},
        legs="ナレストルーズ",
        feet="ヘラルドゲートル",
        neck="ワイケトルク",
        waist="デモンリーサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="胡蝶のイヤリング",
        left_ring="バルラーンリング",
        right_ring="サンゴマリング",
        back="リフラクトケープ",
    }
    local idle_def = set_combine(idle, 
        {head="ゲンデサカウビーン",legs="アートシクロップス",
        feet="アートシクブーツ",
        neck="黄昏の光輪",
        left_ring="ダークリング",
        right_ring="ダークリング",
        back="チェビオットケープ",
        });
    
    sets.precast = {}
    sets.precast['ケアル']= cure
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
    sets.equip = {}
    sets.equip['スタン'] = stun
    sets.equip['強化魔法'] = enhance
    sets.equip['ケアル'] = cure
    sets.equip['FC_WIND'] = fc_wind
    sets.equip['FC_LIGHT'] = fc_light
    sets.equip['IDLE'] = idle
    sets.equip['IDLE_DEF'] = idle_def
end
function pretarget(spell)
end
function precast(spell)
    if spell.type == 'JobAbility' then
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.skill == '回復魔法' then
            if string.find(spell.name, 'ケアル') then
                windower.add_to_chat(123,'debug: cast cure.')
                equip(sets.precast['ケアル'])
            end
        elseif spell.name == 'ヘイスト' then
            equip(sets.precast['ヘイスト'])
        elseif spell.cast_time >= 12 then
            equip(sets.precast.FC[spell.element])
        elseif spell.cast_time >= 8 then
            equip(sets.precast.FC['FC_LOW'])
        end
    end
end
function midcast(spell)
    if spell.type == 'JobAbility' then
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'ヘイスト' then
            equip(sets.midcast['ヘイスト'])
        elseif string.find(spell.name, 'ケアル') then
            --precastと変わらなければ何もしない
        elseif spell.skill=='強化魔法' then
            if string.startswith(spell.name, 'バ') then
                equip(sets.midcast['バ系'])
            elseif (spell.name == 'ストンスキン' 
                    or spell.name == 'ファランクス'
                    or spell.name:startswith('アディ'))
                and sets.midcast[spell.skill] ~= nil then
                equip(sets.midcast['強化魔法'])
            else
                equip(sets.midcast.RECAST[spell.element])
            end
        elseif spell.skill=='弱体魔法' or
               spell.skill=='神聖魔法'then
               equip(sets.midcast[spell.skill])
        else
            equip(sets.midcast.RECAST[spell.element])
        end
    end
end
function aftercast(spell)
end

function status_change(new,old)
end
--コマンド用今のところ↓の３つ
--//gs c equip FC_LIGHT
--//gs c equip ケアル
--//gs c equip FC_WIND
function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if #args >= 2 then
        if args[1] == 'equip' then
            if sets.equip[args[2]] ~= nil then
                equip(sets.equip[args[2]])
            end
        end
    end
end