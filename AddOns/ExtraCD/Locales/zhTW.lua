﻿local L = LibStub("AceLocale-3.0"):NewLocale("ExtraCD", "zhTW")
if not L then return end

L["General"] = "一般"
L["Load Config"] = "加載配置"
L["Profiles"] = "設定檔"
L["talent"] = "天賦"
L["Scan and show internal cooldown of player's talent."] = "檢測并顯示玩家天賦的內置冷卻"
L["enchant"] = "附魔"
L["Scan and show internal cooldown of player's enchant."] = "檢測并顯示玩家物品附魔的內置冷卻"
L["item"] = "飾品"
L["Scan and show internal cooldown of player's trinket and special weapons."] = "檢測并顯示玩家飾品和特效武器的內置冷卻"
L["item set"] = "套裝"
L["Scan and show internal cooldown of player's item set."] = "檢測并顯示玩家套裝的內置冷卻"
L["Lock frame"] = "鎖定框體"
L["Set the frame locked."] = "設置框體為鎖定狀態"
L["Combat only"] = "僅戰鬥顯示"
L["Show the icon only in combat."] = "僅在戰鬥中顯示圖標"
L["Show tooltip"] = "顯示提示"
L["Show tooltip for the icons."] = "為圖標顯示鼠標提示"
L["Icons each row"] = "每行數量"
L["Set the icons in each row"] = "設置每行的圖標數量"
L["Text font"] = "冷卻字體"
L["Set the font of the text"] = "設置冷卻文字的字體"
L["Text opacity"] = "文字不透明度"
L["Text size"] = "文字大小"
L["Set the cooldown text size"] = "設置冷卻文字大小"
L["Icon interval"] = "圖標間隔"
L["Set the interval size between icons"] = "設置圖標之間的距離"
L["Icon size"] = "圖標大小"
L["Set the icon size"] = "設置圖標大小"
L["Blacklist"] = "黑名單"
L["When you crtl+right click at the icon, it will be disabled. If you want to show it again, enable the spell in the list in advance option. The disabled spells will be at the end of the spell list."] = "當你ctrl+右鍵點擊圖標,圖標所表示的法術會被禁用. 如果想再次顯示,在高級選項的法術列表中啟用它.被禁用的法術在列表的最底端."
L["Icon border"] = "圖標邊框"
L["Set the icon border"] = "設置圖標邊框"

-- new
L["Advance"] = "進階"
L["Add New CD"] = "添加新冷卻"
L["Proc Test"] = "觸發測試"

L["Automatically scan and load icds of the types below"] = "自動檢測並加載以下類型的內置內卻"
L["spec"] = "專精技能"
L["Scan and show internal cooldown of player's specializations."] = "檢測並顯示玩家專精技能的內置冷卻."
L["Add a new custom cd(no limit of being an icd), and manage it by yourself.(marked with '*')"] = "添加一個新的自定義冷卻(不局限於內置冷卻),可自由管理.(帶有標記'*')"
L["Data options provide more customized options for adding new cds and modifying the original cds"] = "數據選項提供更多關於添加新的冷卻和修改插件原始數據的選項"
L["To reset all addon original data, your custom data and proc test data will not be changed"] = "重置所有插件原始數據,你的自定義數據和触發測試數據不受影響"
L["Are you sure to reset all addon original data?"] = "確定重置所有插件原始數據?"
L["To delete all custom data, the addon original data and proc test data will not be changed"] = "刪除所有自定義數據,插件原始數據和触發測試數據不受影響"
L["To unlock or lock the original data. It's suggested that you should not modify the addon original data, some advance users may need this feature."] = "解鎖或鎖定原始數據,建議不要更改原始數據,只有高級用戶可能需要這項功能."
L["Are you sure to delete all custom data?"] = "確定刪除所有自定義數據?"
L["Unlock Original Data"] = "解鎖原始數據"
L["Lock Original Data"] = "鎖定原始數據"
L["Proc test provides the feature of testing coverage of proc and estimating the real icds of the unknown"] = "觸發測試提供測試觸發特效覆蓋率和估算內置冷卻的功能"
L["Add a new proc test(no limit of being a proc), and manage it by yourself."] = "添加一個新的觸發測試(不局限於觸發特效),可自由管理."
L["Add New Proc Test"] = "添加新觸發測試"
L["Class"] = "職業"
L["Type"] = "類別"
L["CD"] = "冷卻"
L["Duration"] = "持續時間"
L["Spell ID"] = "法術ID"
L["DELETE"] = "刪除"
L["already exists."] = "已經存在"
L["Name"] = "名字"
L["spell not exists, id:"] = "法術不存在, id:"
L["Are you sure to delete the data?"] = "確定刪除數據?"
L["Glow opacity"] = "閃光不透明度"

-- proc test
L["Minimum interval: "] = "最小觸發間隔"
L["Maximum interval: "] = "最大觸發間隔"
L["Average interval: "] = "平均觸發間隔"
L["Estimated CD: "] = "CD估計值"
L["Total number of test samples: "] = "總樣本數"
L["Buff duration"] = "增益持續時間"
L["Combat time"] = "戰鬥時間"
L["Calculate"] = "計算"
L["Number of times: "] = "觸發次數"
L["Total proc duration: "] = "總持續時間"
L["Average coverage: "] = "平均覆蓋率"
L["Refresh"] = "刷新"
L["Exact CD"] = "準確CD"
L["In general, no need to set this field. If the exact cd of this spell is already known and does not equal to the estimated cd, add it here to calculate more accurately."] = "通常,沒有必要設置這個數值.如果這個法術的準確CD是已知的,但是與CD估計值不符,把它填在此處以使計算更精確."
L["Set this field 0 to calculate the average coverage in infinite time, otherwise calculate the coverage in the specified time"] = "將這個數值設為0,可以計算在無窮大時間內的覆蓋率,否則計算指定時間內的覆蓋率"
L["Show cooldown"] = "顯示冷卻"
L["Show cooldown upon the icons."] = "在圖標上顯示冷卻."
L["Show glow"] = "顯示閃光"
L["Show glow for the icons."] = "為圖標周圍添加閃光."
L["Show cooldonw text"] = "顯示冷卻文字"
L["Show cooldown text for the procs."] = "顯示觸發特效的冷卻時間文字."
L["Glow only at procs"] = "僅特效時閃光"
L["Only show glow during procs, otherwise also show it after cooldown ending."] = "僅在特效觸發期間顯示閃光,否則在冷卻完成時也顯示閃光."
L["enchant(ppm)"] = "附魔(ppm)"
L["Scan and show an average cd based on haste * real-ppm of player's enchant with a real-ppm mechanism. "] = "檢測玩家存在真實PPM機制的附魔,顯示一個基於急速*真實PPM的平均冷卻."

--sroting
L["Sorting options provide the feature to sort the order of icons by yourself."] = "排序選項提供自由管理圖標順序的功能."
L["Enable custom sorting"] = "啟用自定義排序"
L["Move up"] = "上移"
L["Move down"] = "下移"
L["Sorting"] = "排序"

--rppm
L["RPPM"] = "RPPM"
L["RPPM Options"] = "RPPM選項"
L["Show icons for RPPM"] = "顯示RPPM"
L["Show icons for enchants or items with RPPM"] = "為存在RPPM機制的物品或附魔顯示圖標"
L["Chance multiples"] = "觸發幾率倍數"
L["Show number of chance multiples on RPPM icons"] = "在RPPM圖標上顯示一個代表觸發幾率倍數的數字"
L["gem"] = "寶石"
L["Scan and show player's special(legendary) gems"] = "檢測并顯示玩家的特殊(傳說)寶石"