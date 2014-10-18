--[[
    前提条件
        gearswapを先にインストールしておくこと
    インストール方法(
        ～windowerのインストールフォルダ\addons\GearSwap\data
        の下にこのスクリプトをコピーする
        gearswapをロードする(チャットコマンドで以下を実行)
            gs l openbox.lua
    実行方法
        箱開け開始する場合
        gs c openbox
        途中で箱開けを中断する場合
        gs c openbox
            ※箱開け中に開始と同じコマンドを実行すると止まる
    その他
        鞄がいっぱいになると停止する
]]
             
    
function get_sets()
    set_language('japanese')
    boxes = T{
        'ヴェルクの箱','ヴェルクの大箱',
        'イムルの箱','イムルの大箱',
        'イグノアの箱','イグノアの大箱',
        'ダルスの箱','ダルスの大箱',
        'トリルの箱','トリルの大箱',
        'リッジの箱','リッジの大箱',
        'グラムクの箱','グラムクの大箱',
    }
end
function precast(spell)
    myGetProperties(spell,'precast::player',0)
end

function midcast(spell)
    myGetProperties(spell,'midcast::player',0)
end
function aftercast(spell)
    myGetProperties(spell,'aftercast::player',0)
end

_co_flag = false
function countItems()
--[[
    鞄のIDは下記のはず...windower/res/bugs.luaより抜粋
    0--Inventory(鞄）
    1--Safe(モグ金庫）
    2--Storage(収納家具)
    3--Temporary(テンポラリー)
    4--Locker(モグロッカー)
    5--Satchel(モグサッチェル)
    6--Sack(モグサック)
    7--Case(モグケース)
    8--Wardrobe(モグワードローブ)
]]    
    local items=windower.ffxi.get_bag_info(0)
    return {count=items.count, max=items.max}
end
function _co_openbox()
    local i = 1
    while  i <= #boxes and _co_flag do
        local box = boxes[i]
        
        local cInventory = countItems()
        --windower.add_to_chat(8,box..'::鞄:'..cInventory.count..'/'..cInventory.max)
        if cInventory.count >= cInventory.max then
            _co_flag = false
        else
            if player.inventory[box] ~= nil then
                --箱の数を取得
                local c = player.inventory[box].count
                windower.add_to_chat(8, box..'の箱開け開始('..c..')')
                --windower.add_to_chat(8,'鞄の空き('
                --    ..tostring(cInventory.max - cInventory.count)..')')
                while c > 0 and _co_flag do
                    my_send_command('input /item '..box..' <me>')
                    coroutine.sleep(1.8)
                    cInventory = countItems()
                    
                    if cInventory.max - cInventory.count < 5 then
                        windower.add_to_chat(8,'鞄がそろそろいっぱいです...'
                            ..tostring(cInventory.count)..'/'..tostring(cInventory.max))
                    end
                    if cInventory.count >= cInventory.max then
                       _co_flag = false
                    end
                    c = c - 1
                end
            end
        end
        i = i + 1
    end
    windower.add_to_chat(8,'箱開け終了')
    _co_flag = false
end
function self_command(command)
    local args = windower.from_shift_jis(command):split(' ')
    if args[1] == 'openbox' then
        if not _co_flag then
            _co_flag = true
            coroutine.schedule(_co_openbox,1)
        else
            _co_flag = false
        end
    elseif args[1] == 'player'then
        myGetProperties(player,'player',0)
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

function my_send_command(cmd)
    send_command(windower.to_shift_jis(cmd))
end

