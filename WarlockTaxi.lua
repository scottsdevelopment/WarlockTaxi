WarlockTaxi = {}

function WarlockTaxi:JoinNetwork(network)
end

function WarlockTaxi:LeaveNetwork(network)
end

function WarlockTaxi:RegisterSummoner(network)
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