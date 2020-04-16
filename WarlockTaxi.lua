WarlockTaxi = {}
WarlockTaxi.Network = nil

function WarlockTaxi:JoinNetwork(network)
    JoinTemporaryChannel(network)
    WarlockTaxi.Network = network
    WarlockTaxi:Announce();
end

function WarlockTaxi:Announce()
    local map = C_Map.GetBestMapForUnit("player");
    local pos = C_Map.GetPlayerMapPosition(map,"player");
    local summonerText = tostring(WarlockTaxi:IsValidSummoner())
    local zoneText = string.gsub(GetZoneText()," ","_").." "..string.gsub(GetSubZoneText(), " ", "_")
    local posText = tostring(math.ceil(pos.x*10000)/100).." "..tostring(math.ceil(pos.y*10000)/100)
    local announce = "HELLO "..summonerText.." "..zoneText.." "..posText
    WarlockTaxi:Send(announce)
    return announce
end

function WarlockTaxi:LeaveNetwork()
    WarlockTaxi:Send("GOODBYE")
    LeaveChannelByName(WarlockTaxi.Network)
end

function WarlockTaxi:Send(message)
    if WarlockTaxi.Network == nil then return end
    local channel = GetChannelName(WarlockTaxi.Network)
    if channel == nil then return end
    SendChatMessage("WTNÖ "..message, "CHANNEL", nil, channel)
end

function WarlockTaxi:RegisterSummoner(network)
    if not WarlockTaxi:IsValidSummoner() then return end
end

function WarlockTaxi:IsValidSummoner()
    hasSummonSpell = IsPlayerSpell(698) -- Ritual of Summoning
    return hasSummonSpell
end

function WarlockTaxi:SetSummonLocation()
end

function WarlockTaxi:SetSummonStatus(status)
end

function WarlockTaxi:SetSummonDescription(description)
end

function WarlockTaxi:SetSummonerBid(price)
end

function WarlockTaxi:SetSummonerAsk(price)
end

function WarlockTaxi:RequestSummoner(summoner)
end

function WarlockTaxi:RequestZoneSummon(zone)
end