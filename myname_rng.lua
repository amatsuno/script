function get_sets()
    set_language('japanese')
--着替えしたくないアビ・魔法のリスト
    ignore_spells = T{
    }  
--リキャストを監視したいアビ・魔法のリスト
    watch_recast = T{
        'スタン','ドレイン','アスピル'
    }
    
--FC_BASE
    local pre_base ={
    }
    local pre_low = {
    }
    

--強化
    
--CURE
--弱体
--精霊
--stun
--属性帯
--神聖
--待機装備
    local idle = {
        feet='ファジンブーツ',
    }
    local idle_def = set_combine(idle, 
        {
            feet='ＯＲソックス+1',
        })
    local idle_defmg = set_combine(idel_def,
        {
        })
--アビ
    local scavenge={
        feet="ＯＲソックス+1",
    }
--スナップショット
    local snap = {
        head="ＡＭガペット+1",
        hands={ name="テーオングローブ", augments={'"Snapshot"+5','"Snapshot"+3',}},
        body="ＡＭカバン+1",
        legs="ナティラトラウザ",
        waist="インパルスベルト",
        feet={ name="テーオンブーツ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        back={ name="ルシャンケープ", augments={'STR+4','AGI+2','"Store TP"+2','"Snapshot"+1',}},
    }
--着弾
    local rng = {
        head="ＡＲベレー+1",
        body="ＡＭカバン+1",
        hands="アルルナグローブ+1",
        legs="ＡＭブラーグ+1",
        feet={ name="テーオンブーツ", augments={'Rng.Acc.+18 Rng.Atk.+18','Crit.hit rate+3','STR+6 AGI+6',}},
        neck="ガウドリネックレス",
        left_ring="ハイドゥクリング",
        right_ring="ハイドゥクリング",
        waist="チャークベルト",
        back={ name="ルシャンケープ", augments={'STR+4','AGI+1','"Store TP"+3',}},
    }
    sets.ja = {}
    sets.ja['スカベンジ']=scavenge
    sets.precast = {}
    sets.precast.snap=snap
    
    sets.midcast = {}
    sets.midcast.ra =rng
    
    sets.aftercast = {}
    sets.aftercast.idle = snap
    --コマンド着替え用 //gs c equip スタン とか
    sets.equip = {}
    sets.equip['IDLE'] = snap
    sets.equip['IDLE_DEF'] = idle_def
    sets.equip['IDLE_DEFMG'] = idle_defmg
    sets.equip.obi = obi
    --マクロブック、セット変更
    send_command('input /macro book 11;wait .2;input /macro set 1;wait .1;'
        ..'mogmaster si rng'
    )
    --キーバインド設定
    bindKeys(true)

    debugf = file.new('data/logs/debug.log',true)
    if not debugf:exists() then
        debugf:create()
    end
end
function bindKeys(f)
    if f then
        windower.add_to_chat(8,'bind key')
    else
        windower.add_to_chat(123,'unbind key')
    end
end
function file_unload()
    bindKeys(false)
end

function precast(spell)
    --myGetProperties(spell,'splell', 0)
    local set_equip = nil

    if ignore_spells:contains(spell.name) then return end
    if spell.type == 'JobAbility' then
        if sets.ja[spell.name] then
            set_equip = sets.ja[spell.name] 
        end
    elseif spell.type == 'BardSong' then
    elseif spell.type == 'Ninjutsu' then
    elseif spell.type == 'Misc' and spell.name == '飛び道具' then
       set_equip = sets.precast.snap
    end
    if set_equip ~= nil then
       myGetProperties(set_equip,'precast:equip', 0)
        equip(set_equip)
    end
    
end

function midcast(spell)
    if ignore_spells:contains(spell.name) then return end
    local set_equip = nil
    if spell.type == 'JobAbility' then
    elseif spell.type == 'BardSong' then
    elseif spell.type == 'Ninjutsu' then
    elseif spell.type == 'Misc' and spell.name == '飛び道具' then
       set_equip = sets.midcast.ra
    end
    
    if set_equip ~= nil then
        equip(set_equip)
    end
end

function set_element(spell)
end
function set_song(spell)
end

function aftercast(spell)
    if sets.aftercast.idle ~= nil and not sets.aftercast.skip then
      equip(sets.aftercast.idle)
    end
    sets.aftercast.skip = false
    --myGetProperties(spell,'splell', 0)
    if watch_recast:contains(spell.name) and not spell.interrupted then
        my_send_command('@wait 0.1;gs c recast '..spell.id..' '..spell.name)
    end
end

function status_change(new,old)
end
function showrecast(spellid, spellname)
    local recast = windower.ffxi.get_spell_recasts()
    windower.add_to_chat(123,'recast::'..spellname..'('..spellid..')='..recast[spellid] / 60)
    my_send_command('@wait '..tostring(recast[spellid] / 60)..';input /echo '..spellname..'詠唱可能')
end

function self_command(command)
    local args = command:split(' ')
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
        elseif args[1] == 'move' then
            equip(set_move(sets.aftercast.idle))
        elseif args[1] == 'si' then
            my_send_command('mogmaster si rng')
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
    elseif type(t) == 'boolean' then
        debugf:append(spaces..comment..' ='..tostring(t)..'\n')
    else
        debugf:append(spaces..comment..' type is '..type(t)..'\n')
    end
end
function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end
include('script/script/common.lua')
