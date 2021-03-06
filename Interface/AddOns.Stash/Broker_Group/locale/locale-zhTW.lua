﻿local L = LibStub("AceLocale-3.0"):NewLocale("Broker_Group","zhTW")
if not L then return end

L["Minimalistic LDB plugin to track down rolls and perform basic loot functions."] = "用以追蹤隊伍擲骰的LDB介面"
L["Solo"] = "單練"
L["group"] = "隊伍分配"
L["master"] = "隊長分配"
L["freeforall"] = "自由拾取"
L["roundrobin"] = "輪流拾取"
L["needbeforegreed"] = "需求優先"
L["ML (%s)"] = "隊長 (%s)"
L["No rolls"] = "無人擲骰"

L["Roll ending in 5 seconds, recorded %d of %d rolls."] = "擲骰將於 5 秒內結束，記錄了 %d/%d 組擲骰者"

L["Winner: %s."] = "優勝: %s"
L[", "] = "，"
L["Tie: %s are tied at %d."] = "同分: %s 都 %d 點"
L["%s (%d/%d)"] = "%s (%d/%d)"
L["%s [%s]"] = "%s [%s]"
L["%d of expected %d rolls recorded."] = "已記錄 %d/%d 位擲骰者"

L["Perform roll when clicked"] = "左擊擲骰"
L["Perform a standard 1-100 roll when the plugin is clicked."] = "左擊時使用標準擲骰 (1-100)"
L["Announce"] = "發表擲骰結果"
L["Only accept 1-100"] = "只接受 1-100"
L["Accept standard (1-100) rolls only."] = "只接受 (1-100)標準擲骰"
L["Set the loot type."] = "設定拾取方式"
L["Loot threshold"] = "物品分配界限"
L["Set the loot threshold."] = "設定物品分配界限"

L["Where to output roll results."] = "設定何處顯示擲骰結果"
L["Auto (based on group)"] = "自動 (依組隊狀態)"
L["Local"] = "聊天視窗"
L["Say"] = "說"
L["Party"] = "隊伍"
L["Raid"] = "團隊"
L["Guild"] = "公會"
L["Don't announce"] = "不發表"

L["Roll clearing"] = "清除結果"
L["When to clear the rolls."] = "設定何時清除擲骰結果"
L["Never"] = "永不"
L["10 seconds"] = "10秒"
L["15 seconds"] = "15秒"
L["30 seconds"] = "30秒"
L["45 seconds"] = "45秒"
L["60 seconds"] = "60秒"

L["Roll"] = "擲骰"
L["Player"] = "玩家"
L["Loot method"] = "拾取方式"
L["Master looter"] = "主拾取人"
L["Leader"] = "團隊隊長"
L["Officers"] = "團隊副手"
L["|cffeda55fClick|r to roll, |cffeda55fCtrl-Click|r to output winner, |cffeda55fShift-Click|r to clear the list."] = "\n|cffeda55f左擊: |r擲骰\n|cffeda55fCtrl-左擊: |r輸出贏家\n|cffeda55fShift-左擊: |r清除列表"
L["|cffeda55fCtrl-Click|r to output winner, |cffeda55fShift-Click|r to clear the list."] = "\n|cffeda55fCtrl-左擊: |r輸出贏家\n|cffeda55fShift-左擊: |r清除列表"

L["Pass"] = "放棄"
L["Everyone passed."] = "全部人都已放棄"
	
L["Leave Party"] = "離開隊伍"
L["Leave your current party or raid."] = "離開你目前的隊伍或團隊"
	
L["Reset Instances"] = "重置副本"
L["Reset all available instance the group leader has active."] = "重置所有隊長所開啟的副本"
L["Dungeon Difficulty"] = "副本難度"
L["Set the dungeon difficulty for instances."] = "設定副本難度"
L["Pass on random loot"] = "放棄拾取物品"
L["Enable this setting to auto-pass on random loot."] = "點擊以放棄拾取後續物品"

L["Raid Difficulty"] = "團隊難度"
L["Set the raid difficulty for instances."] = "設定副本難度"
L["Show instance difficulty"] = "顯示副本難度"
L["Toggles instance difficulty display on the button/block."] = "是否顯示副本難度"
L["Difficulty type"] = "副本難度"
L["Set the difficulty type text shown on the button/block. 'Auto' means the difficulty will only be shown if you are grouped and will reflect your group type."] = "顯示難度，設定自動則依組隊情況顯示"
L["Show loot method"] = "顯示拾取方式"
L["Toggles loot method display on the button/block."] = "是否顯示拾取方式"

L["5 N"] = "5 N"
L["5 H"] = "5 H"
L["10 N"] = "10 N"

L["25 N"] = "25 N"
L["10 H"] = "10 H"

L["25 H"] = "25 H"
L["Short text for instance difficulty"] = "簡短顯示副本難度"
L["Trims the instance difficulty text label. For example 25 player Heroic difficulty will display as '25 H'."] = "以代字顯示副本難度"