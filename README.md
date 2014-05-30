hello
spellcastからgearswapの移行で悪戦苦闘中。


日本語クライアントで見つかった問題
/ma ケアル <stpc>だとうまく動かない

triggers.luaでtargetを変換しているようだが、このときに
感じ部分がUTF-8でエンコードされているっぽい
この辺とか
storedcommand = command..' "'..r_line[language]..'" '
こんな感じに修正で動いた
storedcommand = command..' "'..windower.to_shift_jis(r_line[language])..'" '


学者の補遺専用魔法(白グリ中にリレイズIIIとか）の詠唱で着替えができない
buffactive['Addendum: White'])→buffactive[res.buffs[401][language]]
buffactive['Addendum: Black']→buffactive[res.buffs[402][language]]

1.SCH spells with 'Addendum: *' does not work.

this is because buffactive checked in English.

function filter_pretarget() in helper_functions.lua,
buffactive['Addendum: White']) and buffactive['Addendum: Black']) dose not work correctly in JP client.

when modifying to buffactive[res.buffs[401][language]] and 
buffactive[res.buffs[402][language]], they're working correcty.

2./ma "XXX" <st*> does not work.
this is because XXX encoded by UTF-8 in triggers.lua.

when modifying following code in triggers.lua, working correctly.

storedcommand = command..' "'..r_line[language]..'" '
to
if language == 'japanese' then
	storedcommand = command..' "'..windower.to_shift_jis(r_line[language])..'" '
else
	storedcommand = command..' "'..r_line[language]..'" '
end