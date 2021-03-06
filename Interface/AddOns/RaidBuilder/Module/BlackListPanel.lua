
BuildEnv(...)

BlackListPanel = RaidBuilder:NewModule(CreateFrame('Frame'), 'BlackListPanel', 'AceEvent-3.0')

local BROAD_HEADER = {
    {
        key = 'B-Tag',
        text = L['战网昵称'],
        width = 150,
        style = 'LEFT',
        showHandler = function(data)
            return data.btag
        end,
    },
    {
        key = 'Time',
        text = L['屏蔽日期'],
        width = 150,
        style = 'LEFT',
        showHandler = function(data)
            return date('%Y-%m-%d %H:%M', data.recordDate)
        end,
    },
    {
        key = 'Reason',
        text = L['注释'],
        width = 460,
        style = 'LEFT',
        showHandler = function(data)
            return data.reason
        end,
    },
}

function BlackListPanel:OnInitialize()
    GUI:Embed(self, 'Owner', 'Tab', 'Refresh')

    OptionPanel:RegisterPanel(L['黑名单'], self, 0)

    self:ClearAllPoints()
    self:SetPoint('TOPLEFT', 0, -60)
    self:SetPoint('BOTTOMRIGHT')

    local lineLeft = self:CreateTexture(nil, 'OVERLAY')
    lineLeft:SetSize(32, 16)
    lineLeft:SetTexture([[Interface\DialogFrame\UI-DialogBox-Divider]])
    lineLeft:SetTexCoord(0, 0.125, 0, 0.5)
    lineLeft:SetPoint('LEFT', self, 'TOPLEFT', 0, -1)

    local lineRight = self:CreateTexture(nil, 'OVERLAY')
    lineRight:SetTexture([[Interface\DialogFrame\UI-DialogBox-Divider]])
    lineRight:SetTexCoord(0.62890625, 0.75390625, 0, 0.5)
    lineRight:SetSize(32, 16)
    lineRight:SetPoint('RIGHT', self, 'TOPRIGHT', 0, -1)

    local lineMid = self:CreateTexture(nil, 'OVERLAY')
    lineMid:SetTexture([[Interface\DialogFrame\UI-DialogBox-Divider]])
    lineMid:SetTexCoord(0.125, 0.62890625, 0, 0.5)
    lineMid:SetPoint('TOPLEFT', lineLeft, 'TOPRIGHT')
    lineMid:SetPoint('BOTTOMRIGHT', lineRight, 'BOTTOMLEFT')

    local DelButton = GUI:GetClass('ClearButton'):New(self)
    DelButton:SetScript('OnClick', function(DelButton)
        self:Del(DelButton.btag)
    end)
    GUI:SetTooltip(DelButton, L['解除屏蔽'])

    local BlackList = GUI:GetClass('DataGridView'):New(self)
    BlackList:SetPoint('TOPLEFT', 8, -8)
    BlackList:SetPoint('BOTTOMRIGHT', -8, 8)
    BlackList:SetItemHeight(30)
    BlackList:SetItemSpacing(3)
    BlackList:SetItemClass(RaidBuilder:GetClass('BrowseItem'))
    BlackList:InitHeader(BROAD_HEADER)
    BlackList:SetHeaderPoint('BOTTOMLEFT', BlackList, 'TOPLEFT', 0, 10)
    BlackList:SetSortHandler(function(data)
        return - data.recordDate
    end)
    BlackList:SetCallback('OnGridEnter', function(_, grid, data)
        DelButton:Show()
        DelButton:ClearAllPoints()
        DelButton:SetParent(grid:GetParent())
        DelButton:SetPoint('RIGHT', grid:GetParent(), -10, 0)
        DelButton:SetFrameLevel(grid:GetFrameLevel() + 10)
        DelButton.btag = data.btag
    end)
    BlackList:SetCallback('OnGridLeave', function(_, grid, data)
        if not DelButton:IsMouseOver() then
           DelButton:Hide() 
        end
    end)

    local Tips = self:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmallRight')
    -- Tips:SetPoint('BOTTOMRIGHT', self:GetOwner():GetOwner(), -7, 7)
    Tips:SetText(L['|cffff0000注意：黑名单仅储存在本地配置中|r'])
    Tips:SetPoint('TOPRIGHT', -7, 45)

    self:RegisterMessage('RAIDBUILDER_BLACKLIST_UPDATE', 'Refresh')
    self:SetScript('OnShow', self.Refresh)
    self.BlackList = BlackList
end

function BlackListPanel:Update()
    local list = {}
    local BlackList = self.BlackList

    for k, v in pairs(Profile:GetBlackList()) do
        tinsert(list, {btag = k, reason = v.reason, recordDate = v.recordDate})
    end

    BlackList:SetItemList(list)
    BlackList:Refresh()
end

function BlackListPanel:Add(btag, callback)
    if type(btag) ~= 'string' then
         return
    end

    GUI:CallInputDialog(format(L['你确定将 |cffffd100%s|r 加入黑名单吗？'], btag), function(result, text)
        if result then
            Profile:AddBlackList(btag, text)
            if type(callback) == 'function' then
                callback()
            end
        end
    end, nil, L['广告'], 255)
end

function BlackListPanel:Del(btag)
    if not btag or btag == '' then
        return
    end

    GUI:CallMessageDialog(format(L['你确定将 |cffffd100%s|r 移出黑名单吗？'], btag), function(result)
        if result then
            Profile:DeleteBlackList(btag)
        end
    end)
end
