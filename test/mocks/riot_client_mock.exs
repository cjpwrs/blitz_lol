defmodule BlitzLol.RiotClientMock do
  @moduledoc """
  Mocks for testing against the RiotClient module
  """

  def fetch_summoner(_, _) do
    {:ok,
     %{
       "accountId" => "DZpQh5Zy7pA_ifcUAnMiWhNVeQdwLiY3Pfq3q-HBdihYYA",
       "id" => "yJnSi-Ma-UGNkMCQ1SALBbbMpyBRjIE9JfKC5GulY-8ByNo",
       "name" => "Smoothie",
       "profileIconId" => 4817,
       "puuid" =>
         "uxIu8GX6sfcED6ZX5p0h1SNn1mKtb-z347I1gJF-1tYtg_wF6W0rqnD2mUhSipmj6Ht8AmSC3tIl8A",
       "revisionDate" => 1_635_883_987_000,
       "summonerLevel" => 315
     }}
  end

  def fetch_matches(_, _, _) do
    {:ok,
     [
       "NA1_4091837695",
       "NA1_4091808961",
       "NA1_4091761432",
       "NA1_4091680761",
       "NA1_4091653873",
       "NA1_4091593829",
       "NA1_4091478299",
       "NA1_4091328535",
       "NA1_4090696139",
       "NA1_4090595938",
       "NA1_4090539387",
       "NA1_4090554914",
       "NA1_4089065846",
       "NA1_4061782056",
       "NA1_4061746468",
       "NA1_3981125163",
       "NA1_3909468026",
       "NA1_3909470616",
       "NA1_3909404832",
       "NA1_3909345709"
     ]}
  end

  def fetch_match(_, _) do
    {:ok,
     %{
       "info" => %{
         "gameCreation" => 1_636_085_062_000,
         "gameDuration" => 1296,
         "gameEndTimestamp" => 1_636_086_375_759,
         "gameId" => 4_091_837_695,
         "gameMode" => "CLASSIC",
         "gameName" => "teambuilder-match-4091837695",
         "gameStartTimestamp" => 1_636_085_079_334,
         "gameType" => "MATCHED_GAME",
         "gameVersion" => "11.22.406.3587",
         "mapId" => 11,
         "participants" => [
           %{
             "profileIcon" => 3625,
             "totalDamageTaken" => 18772,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 0,
             "summoner1Casts" => 3,
             "lane" => "TOP",
             "summoner1Id" => 4,
             "kills" => 0,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 10759,
             "wardsKilled" => 1,
             "physicalDamageDealt" => 47548,
             "summonerLevel" => 557,
             "trueDamageTaken" => 1655,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5002,
                 "flex" => 5008,
                 "offense" => 5008
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8010, "var1" => 0, "var2" => 0, "var3" => 0},
                     %{"perk" => 9111, "var1" => 0, "var2" => 20, "var3" => 0},
                     %{"perk" => 9105, "var1" => 0, "var2" => 0, "var3" => 0},
                     %{"perk" => 8017, "var1" => 72, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8000
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8352, "var1" => 233, "var2" => 1327, "var3" => 680},
                     %{"perk" => 8345, "var1" => 3, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 8425,
             "magicDamageDealtToChampions" => 1171,
             "totalDamageDealtToChampions" => 7002,
             "largestKillingSpree" => 0,
             "damageDealtToObjectives" => 596,
             "sightWardsBoughtInGame" => 0,
             "item5" => 3047,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "TOP",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => "",
             "role" => "SOLO",
             "totalHeal" => 4640,
             "championTransform" => 0,
             "visionWardsBoughtInGame" => 0,
             "tripleKills" => 0,
             "bountyLevel" => 0
           },
           %{
             "profileIcon" => 23,
             "totalDamageTaken" => 16649,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 108,
             "summoner1Casts" => 12,
             "lane" => "JUNGLE",
             "summoner1Id" => 11,
             "kills" => 4,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 8061,
             "wardsKilled" => 1,
             "physicalDamageDealt" => 98105,
             "summonerLevel" => 544,
             "trueDamageTaken" => 1202,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5003,
                 "flex" => 5008,
                 "offense" => 5005
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8021, "var1" => 1340, "var2" => 877, "var3" => 0},
                     %{"perk" => 9111, "var1" => 247, "var2" => 140, "var3" => 0},
                     %{"perk" => 9104, "var1" => 11, "var2" => 0, "var3" => 0},
                     %{"perk" => 8014, "var1" => 171, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8000
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8304, "var1" => 9, "var2" => 4, "var3" => 5},
                     %{"perk" => 8321, "var1" => 1, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 8872,
             "magicDamageDealtToChampions" => 633,
             "totalDamageDealtToChampions" => 9993,
             "largestKillingSpree" => 0,
             "damageDealtToObjectives" => 13782,
             "sightWardsBoughtInGame" => 0,
             "item5" => 0,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "JUNGLE",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => "",
             "role" => "NONE",
             "totalHeal" => 4162,
             "championTransform" => 0,
             "visionWardsBoughtInGame" => 3,
             "tripleKills" => 0
           },
           %{
             "profileIcon" => 4641,
             "totalDamageTaken" => 20705,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 8,
             "summoner1Casts" => 2,
             "lane" => "MIDDLE",
             "summoner1Id" => 4,
             "kills" => 2,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 8359,
             "wardsKilled" => 4,
             "physicalDamageDealt" => 13087,
             "summonerLevel" => 497,
             "trueDamageTaken" => 2347,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5003,
                 "flex" => 5008,
                 "offense" => 5008
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8230, "var1" => 15, "var2" => 0, "var3" => 0},
                     %{"perk" => 8224, "var1" => 531, "var2" => 0, "var3" => 0},
                     %{"perk" => 8210, "var1" => 0, "var2" => 0, "var3" => 0},
                     %{"perk" => 8236, "var1" => 24, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8200
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8304, "var1" => 11, "var2" => 1, "var3" => 5},
                     %{"perk" => 8347, "var1" => 0, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 10736,
             "magicDamageDealtToChampions" => 10464,
             "totalDamageDealtToChampions" => 12516,
             "largestKillingSpree" => 0,
             "damageDealtToObjectives" => 4113,
             "sightWardsBoughtInGame" => 0,
             "item5" => 0,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "MIDDLE",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => "",
             "role" => "CARRY",
             "totalHeal" => 17652,
             "championTransform" => 0,
             "visionWardsBoughtInGame" => 1
           },
           %{
             "profileIcon" => 4568,
             "totalDamageTaken" => 15394,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 0,
             "summoner1Casts" => 5,
             "lane" => "BOTTOM",
             "summoner1Id" => 3,
             "kills" => 7,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 6128,
             "wardsKilled" => 2,
             "physicalDamageDealt" => 2298,
             "summonerLevel" => 64,
             "trueDamageTaken" => 1680,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5002,
                 "flex" => 5008,
                 "offense" => 5008
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8128, "var1" => 881, "var2" => 14, "var3" => 0},
                     %{"perk" => 8139, "var1" => 1327, "var2" => 0, "var3" => 0},
                     %{"perk" => 8138, "var1" => 30, "var2" => 0, "var3" => 0},
                     %{"perk" => 8106, "var1" => 5, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8100
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8009, "var1" => 2133, "var2" => 0, "var3" => 0},
                     %{"perk" => 8299, "var1" => 1733, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8000
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 8591,
             "magicDamageDealtToChampions" => 22362,
             "totalDamageDealtToChampions" => 23007,
             "largestKillingSpree" => 3,
             "damageDealtToObjectives" => 4623,
             "sightWardsBoughtInGame" => 0,
             "item5" => 0,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "BOTTOM",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => "",
             "role" => "SOLO",
             "totalHeal" => 1807,
             "championTransform" => 0,
             ...
           },
           %{
             "profileIcon" => 4817,
             "totalDamageTaken" => 14210,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 0,
             "summoner1Casts" => 4,
             "lane" => "MIDDLE",
             "summoner1Id" => 4,
             "kills" => 2,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 12836,
             "wardsKilled" => 9,
             "physicalDamageDealt" => 5248,
             "summonerLevel" => 315,
             "trueDamageTaken" => 1445,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5002,
                 "flex" => 5008,
                 "offense" => 5005
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8439, "var1" => 467, "var2" => 769, "var3" => 0},
                     %{"perk" => 8463, "var1" => 244, "var2" => 0, "var3" => 0},
                     %{"perk" => 8473, "var1" => 224, "var2" => 0, "var3" => 0},
                     %{"perk" => 8242, "var1" => 72, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8400
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8352, "var1" => 129, "var2" => 962, "var3" => 0},
                     %{"perk" => 8316, "var1" => 441, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 6014,
             "magicDamageDealtToChampions" => 2055,
             "totalDamageDealtToChampions" => 4645,
             "largestKillingSpree" => 2,
             "damageDealtToObjectives" => 1269,
             "sightWardsBoughtInGame" => 0,
             "item5" => 1011,
             "totalDamageShieldedOnTeammates" => 351,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "UTILITY",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => "",
             "role" => "SUPPORT",
             "totalHeal" => 2707,
             ...
           },
           %{
             "profileIcon" => 508,
             "totalDamageTaken" => 15999,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 8,
             "summoner1Casts" => 1,
             "lane" => "TOP",
             "summoner1Id" => 4,
             "kills" => 7,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 17988,
             "wardsKilled" => 3,
             "physicalDamageDealt" => 125_190,
             "summonerLevel" => 360,
             "trueDamageTaken" => 138,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5003,
                 "flex" => 5008,
                 "offense" => 5005
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8010, "var1" => 364, "var2" => 0, "var3" => 0},
                     %{"perk" => 9101, "var1" => 1630, "var2" => 1068, "var3" => 0},
                     %{"perk" => 9104, "var1" => 12, "var2" => 50, "var3" => 0},
                     %{"perk" => 8014, "var1" => 382, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8000
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8429, "var1" => 44, "var2" => 13, "var3" => 12},
                     %{"perk" => 8451, "var1" => 175, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8400
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 13110,
             "magicDamageDealtToChampions" => 4336,
             "totalDamageDealtToChampions" => 21997,
             "largestKillingSpree" => 4,
             "damageDealtToObjectives" => 2052,
             "sightWardsBoughtInGame" => 0,
             "item5" => 2031,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "TOP",
             "largestCriticalStrike" => 498,
             "riotIdTagline" => "",
             "role" => "SOLO"
           },
           %{
             "profileIcon" => 5157,
             "totalDamageTaken" => 22670,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 147,
             "summoner1Casts" => 16,
             "lane" => "JUNGLE",
             "summoner1Id" => 11,
             "kills" => 9,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 10667,
             "wardsKilled" => 3,
             "physicalDamageDealt" => 23128,
             "summonerLevel" => 222,
             "trueDamageTaken" => 222,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5002,
                 "flex" => 5008,
                 "offense" => 5005
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8128, "var1" => 1038, "var2" => 14, "var3" => 0},
                     %{"perk" => 8143, "var1" => 457, "var2" => 0, "var3" => 0},
                     %{"perk" => 8138, "var1" => 30, "var2" => 0, "var3" => 0},
                     %{"perk" => 8135, "var1" => 5130, "var2" => 5, "var3" => 0}
                   ],
                   "style" => 8100
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8304, "var1" => 9, "var2" => 0, "var3" => 0},
                     %{"perk" => 8347, "var1" => 0, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 12440,
             "magicDamageDealtToChampions" => 9385,
             "totalDamageDealtToChampions" => 11705,
             "largestKillingSpree" => 6,
             "damageDealtToObjectives" => 25825,
             "sightWardsBoughtInGame" => 0,
             "item5" => 1052,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "JUNGLE",
             "largestCriticalStrike" => 0,
             "riotIdTagline" => ""
           },
           %{
             "profileIcon" => 654,
             "totalDamageTaken" => 17009,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 0,
             "summoner1Casts" => 5,
             "lane" => "MIDDLE",
             "summoner1Id" => 14,
             "kills" => 7,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 6621,
             "wardsKilled" => 0,
             "physicalDamageDealt" => 16941,
             "summonerLevel" => 449,
             "trueDamageTaken" => 531,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5003,
                 "flex" => 5008,
                 "offense" => 5008
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 9923, "var1" => 48, "var2" => 88, "var3" => 0},
                     %{"perk" => 8143, "var1" => 604, "var2" => 0, "var3" => 0},
                     %{"perk" => 8120, "var1" => 3, "var2" => 30, "var3" => 7},
                     %{"perk" => 8134, "var1" => 56, "var2" => 5, "var3" => 0}
                   ],
                   "style" => 8100
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{
                       "perk" => 8352,
                       "var1" => 370,
                       "var2" => 1817,
                       "var3" => 1243
                     },
                     %{"perk" => 8345, "var1" => 3, "var2" => 0, "var3" => 0}
                   ],
                   "style" => 8300
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 11303,
             "magicDamageDealtToChampions" => 11839,
             "totalDamageDealtToChampions" => 16379,
             "largestKillingSpree" => 3,
             "damageDealtToObjectives" => 4083,
             "sightWardsBoughtInGame" => 0,
             "item5" => 1026,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => false,
             "teamPosition" => "MIDDLE",
             "largestCriticalStrike" => 0
           },
           %{
             "profileIcon" => 3583,
             "totalDamageTaken" => 14051,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 8,
             "summoner1Casts" => 3,
             "lane" => "BOTTOM",
             "summoner1Id" => 1,
             "kills" => 8,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 7596,
             "wardsKilled" => 4,
             "physicalDamageDealt" => 64300,
             "summonerLevel" => 207,
             "trueDamageTaken" => 633,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5003,
                 "flex" => 5008,
                 "offense" => 5005
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8008, "var1" => 2, "var2" => 20, "var3" => 0},
                     %{"perk" => 8009, "var1" => 1671, "var2" => 0, "var3" => 0},
                     %{"perk" => 9103, "var1" => 17, "var2" => 20, "var3" => 0},
                     %{"perk" => 8017, "var1" => 401, "var2" => 0, ...}
                   ],
                   "style" => 8000
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8139, "var1" => 727, "var2" => 0, "var3" => 0},
                     %{"perk" => 8135, "var1" => 1811, "var2" => 5, "var3" => 0}
                   ],
                   "style" => 8100
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 9740,
             "magicDamageDealtToChampions" => 1041,
             "totalDamageDealtToChampions" => 15157,
             "largestKillingSpree" => 6,
             "damageDealtToObjectives" => 3856,
             "sightWardsBoughtInGame" => 0,
             "item5" => 0,
             "totalDamageShieldedOnTeammates" => 0,
             "timePlayed" => 1296,
             "firstBloodAssist" => true,
             "teamPosition" => "BOTTOM"
           },
           %{
             "profileIcon" => 1114,
             "totalDamageTaken" => 9588,
             "teamEarlySurrendered" => false,
             "neutralMinionsKilled" => 0,
             "summoner1Casts" => 3,
             "lane" => "BOTTOM",
             "summoner1Id" => 4,
             "kills" => 3,
             "objectivesStolenAssists" => 0,
             "damageSelfMitigated" => 5321,
             "wardsKilled" => 2,
             "physicalDamageDealt" => 1699,
             "summonerLevel" => 57,
             "trueDamageTaken" => 82,
             "perks" => %{
               "statPerks" => %{
                 "defense" => 5002,
                 "flex" => 5008,
                 "offense" => 5008
               },
               "styles" => [
                 %{
                   "description" => "primaryStyle",
                   "selections" => [
                     %{"perk" => 8214, "var1" => 621, "var2" => 1165, "var3" => 0},
                     %{"perk" => 8226, "var1" => 250, "var2" => 493, "var3" => 0},
                     %{"perk" => 8210, "var1" => 3, "var2" => 0, ...},
                     %{"perk" => 8237, "var1" => 353, ...}
                   ],
                   "style" => 8200
                 },
                 %{
                   "description" => "subStyle",
                   "selections" => [
                     %{"perk" => 8473, "var1" => 110, "var2" => 0, "var3" => 0},
                     %{"perk" => 8453, "var1" => 153, "var2" => 1033, ...}
                   ],
                   "style" => 8400
                 }
               ]
             },
             "objectivesStolen" => 0,
             "champExperience" => 8043,
             "magicDamageDealtToChampions" => 4201,
             "totalDamageDealtToChampions" => 5344,
             "largestKillingSpree" => 2,
             "damageDealtToObjectives" => 565,
             "sightWardsBoughtInGame" => 0,
             "item5" => 0,
             "totalDamageShieldedOnTeammates" => 5234,
             "timePlayed" => 1296,
             "firstBloodAssist" => false
           }
         ],
         "platformId" => "NA1",
         "queueId" => 420,
         "teams" => [
           %{
             "bans" => [
               %{"championId" => 350, "pickTurn" => 1},
               %{"championId" => 107, "pickTurn" => 2},
               %{"championId" => 203, "pickTurn" => 3},
               %{"championId" => -1, "pickTurn" => 4},
               %{"championId" => 236, "pickTurn" => 5}
             ],
             "objectives" => %{
               "baron" => %{"first" => false, "kills" => 0},
               "champion" => %{"first" => false, "kills" => 15},
               "dragon" => %{"first" => true, "kills" => 2},
               "inhibitor" => %{"first" => false, "kills" => 0},
               "riftHerald" => %{"first" => true, "kills" => 1},
               "tower" => %{"first" => true, "kills" => 2}
             },
             "teamId" => 100,
             "win" => false
           },
           %{
             "bans" => [
               %{"championId" => 119, "pickTurn" => 6},
               %{"championId" => 38, "pickTurn" => 7},
               %{"championId" => 114, "pickTurn" => 8},
               %{"championId" => 107, "pickTurn" => 9},
               %{"championId" => 91, "pickTurn" => 10}
             ],
             "objectives" => %{
               "baron" => %{"first" => false, "kills" => 0},
               "champion" => %{"first" => true, "kills" => 34},
               "dragon" => %{"first" => false, "kills" => 1},
               "inhibitor" => %{"first" => false, "kills" => 0},
               "riftHerald" => %{"first" => false, "kills" => 1},
               "tower" => %{"first" => false, "kills" => 4}
             },
             "teamId" => 200,
             "win" => true
           }
         ],
         "tournamentCode" => ""
       },
       "metadata" => %{
         "dataVersion" => "2",
         "matchId" => "NA1_4091837695",
         "participants" => [
           "o0ghx0RxMYb7WxTFTluKYwZdmlyWVjuow6XFnO8vkWPdAK3ZNUYmxuuEmCBmhnI5WFdwId4Sxe26NA",
           "vb3zoA4Lk0MkGHBlu-AoqhA946pb_YzK7aM7PWwEEtPeHgIeZTZDeGo7pVT80nKiPgFml5e19mH62A",
           "iw3SD-WrB-AyL-m6jMFAIM2f5VmWPkNlQx-5YE3Y38a1KsD-ePLiNBT8i0wz-ZOCrXX-LGBkKQC2Tw",
           "M56EjU5HfqAe2V2tpLlZnhD9mu9XCzIjeKNDbdr8-icTUIfrY6vHcKGwZdaFmdX4S4_2JejZD9cm3Q",
           "uxIu8GX6sfcED6ZX5p0h1SNn1mKtb-z347I1gJF-1tYtg_wF6W0rqnD2mUhSipmj6Ht8AmSC3tIl8A",
           "0CLA-UTakv_74dzzvnMg5BbdMr4GHykeMxUlMQZTQSOb4cVGJSo3ujNcxm6zwLZpoYQSiBVT2ZJV_w",
           "xGnKefNDxWR5hSVkc9hUTNfV1cORrPFpsAQqj7k2lu2T2y32PaZu2QlZR3GFDqoQsQLsFV35DgSAkw",
           "ZQH7sOnPbACtW2rxr8Dp55KhYbl6KzHHhoX_W4ketXEph3nVsma74JLxpg4tVuQahHCAVlYl2PSL2A",
           "P1v2Ek0KT-zeaTsc6dxrgU7ZjhQPnsBuOji91LjOaPcXKGFWvcN6MrtJUfM1APUUAr6UNb-b8CDF1Q",
           "AO9ivOK3FOBgps8W0GMto4J-L-nMLXgIDGdSsjcLFwK4AcIU4QbHpjFI3tO90bz18B1MYde4cT3wIA"
         ]
       }
     }}
  end
end
