var search_data = {"index":{"searchIndex":["riotapi","aggregatedstat","champion","client","game","invalidapirequest","masterypage","playerstatsummary","rune","runepage","summoner","talent","team","aggregated_stats=()","all()","count()","count=()","find()","find()","find()","find()","find()","find_by_name()","free_to_play_champions()","get()","mastery_pages()","names_by_ids()","new()","new()","new()","new()","new()","new()","new()","new()","new()","new()","player_stats()","post()","recent_games()","recent_games()","rune_pages()","slots=()","statistics=()","talents=()"],"longSearchIndex":["riotapi","riotapi::aggregatedstat","riotapi::champion","riotapi::client","riotapi::game","riotapi::invalidapirequest","riotapi::masterypage","riotapi::playerstatsummary","riotapi::rune","riotapi::runepage","riotapi::summoner","riotapi::talent","riotapi::team","riotapi::playerstatsummary#aggregated_stats=()","riotapi::champion::all()","riotapi::aggregatedstat#count()","riotapi::aggregatedstat#count=()","riotapi::masterypage::find()","riotapi::playerstatsummary::find()","riotapi::runepage::find()","riotapi::summoner::find()","riotapi::team::find()","riotapi::summoner::find_by_name()","riotapi::champion::free_to_play_champions()","riotapi::client::get()","riotapi::summoner#mastery_pages()","riotapi::summoner::names_by_ids()","riotapi::aggregatedstat::new()","riotapi::champion::new()","riotapi::game::new()","riotapi::masterypage::new()","riotapi::playerstatsummary::new()","riotapi::rune::new()","riotapi::runepage::new()","riotapi::summoner::new()","riotapi::talent::new()","riotapi::team::new()","riotapi::summoner#player_stats()","riotapi::client::post()","riotapi::game::recent_games()","riotapi::summoner#recent_games()","riotapi::summoner#rune_pages()","riotapi::runepage#slots=()","riotapi::game#statistics=()","riotapi::masterypage#talents=()"],"info":[["RiotAPI","","RiotAPI.html","",""],["RiotAPI::AggregatedStat","","RiotAPI/AggregatedStat.html","","<p>This class represents a statistic in League of Legends\n"],["RiotAPI::Champion","","RiotAPI/Champion.html","","<p>This class represents a champion in League of Legends.  It contains data\nabout the champion.\n"],["RiotAPI::Client","","RiotAPI/Client.html","","<p>This class is what handles the requests to the API.\n"],["RiotAPI::Game","","RiotAPI/Game.html","",""],["RiotAPI::InvalidAPIRequest","","RiotAPI/InvalidAPIRequest.html","",""],["RiotAPI::MasteryPage","","RiotAPI/MasteryPage.html","",""],["RiotAPI::PlayerStatSummary","","RiotAPI/PlayerStatSummary.html","",""],["RiotAPI::Rune","","RiotAPI/Rune.html","",""],["RiotAPI::RunePage","","RiotAPI/RunePage.html","",""],["RiotAPI::Summoner","","RiotAPI/Summoner.html","",""],["RiotAPI::Talent","","RiotAPI/Talent.html","",""],["RiotAPI::Team","","RiotAPI/Team.html","",""],["aggregated_stats=","RiotAPI::PlayerStatSummary","RiotAPI/PlayerStatSummary.html#method-i-aggregated_stats-3D","(value)",""],["all","RiotAPI::Champion","RiotAPI/Champion.html#method-c-all","(free=false)","<p>Returns all the champions in the game For only the free to play champions,\nset `free` to true\n"],["count","RiotAPI::AggregatedStat","RiotAPI/AggregatedStat.html#method-i-count","()","<p>Alias for #value\n"],["count=","RiotAPI::AggregatedStat","RiotAPI/AggregatedStat.html#method-i-count-3D","(new_count)",""],["find","RiotAPI::MasteryPage","RiotAPI/MasteryPage.html#method-c-find","(region, summoner_id)",""],["find","RiotAPI::PlayerStatSummary","RiotAPI/PlayerStatSummary.html#method-c-find","(region, summoner_id, season=\"SEASON3\")",""],["find","RiotAPI::RunePage","RiotAPI/RunePage.html#method-c-find","(region, summoner_id)",""],["find","RiotAPI::Summoner","RiotAPI/Summoner.html#method-c-find","(region, summoner_id)","<p>Find a summoner by it&#39;s summoner ID\n"],["find","RiotAPI::Team","RiotAPI/Team.html#method-c-find","(region, summoner_id)",""],["find_by_name","RiotAPI::Summoner","RiotAPI/Summoner.html#method-c-find_by_name","(region, name)","<p>Find a summoner by it&#39;s name\n"],["free_to_play_champions","RiotAPI::Champion","RiotAPI/Champion.html#method-c-free_to_play_champions","()","<p>Returns all the free to play champions in the game\n"],["get","RiotAPI::Client","RiotAPI/Client.html#method-c-get","(region, resource, options={})","<p>Issues a GET request the the API. Pass in the region, and resource as well\nas optional query params. …\n"],["mastery_pages","RiotAPI::Summoner","RiotAPI/Summoner.html#method-i-mastery_pages","()","<p>Returns the MasteryPage array for the Summoner instance\n"],["names_by_ids","RiotAPI::Summoner","RiotAPI/Summoner.html#method-c-names_by_ids","(region, summoner_ids)","<p>Returns an array of names. summoner_ids should be an array of summoner_ids\n"],["new","RiotAPI::AggregatedStat","RiotAPI/AggregatedStat.html#method-c-new","(data)","<p>Returns a statistic with a name and a value\n"],["new","RiotAPI::Champion","RiotAPI/Champion.html#method-c-new","(data)","<p>Creates a new Champion described by the JSON data returned from the API\n"],["new","RiotAPI::Game","RiotAPI/Game.html#method-c-new","(data)",""],["new","RiotAPI::MasteryPage","RiotAPI/MasteryPage.html#method-c-new","(data)",""],["new","RiotAPI::PlayerStatSummary","RiotAPI/PlayerStatSummary.html#method-c-new","(data)",""],["new","RiotAPI::Rune","RiotAPI/Rune.html#method-c-new","(data)",""],["new","RiotAPI::RunePage","RiotAPI/RunePage.html#method-c-new","(data)",""],["new","RiotAPI::Summoner","RiotAPI/Summoner.html#method-c-new","(data, region)",""],["new","RiotAPI::Talent","RiotAPI/Talent.html#method-c-new","(data)",""],["new","RiotAPI::Team","RiotAPI/Team.html#method-c-new","(data)",""],["player_stats","RiotAPI::Summoner","RiotAPI/Summoner.html#method-i-player_stats","(season='SEASON3')","<p>Returns the Player Stats for the Summoner\n"],["post","RiotAPI::Client","RiotAPI/Client.html#method-c-post","(region, resource, options={})","<p>Issues a POST request the the API. Pass in the region, and resource as well\nas optional query params. …\n"],["recent_games","RiotAPI::Game","RiotAPI/Game.html#method-c-recent_games","(region, summoner_id)","<p>Returns the last 10 games for the summoner\n"],["recent_games","RiotAPI::Summoner","RiotAPI/Summoner.html#method-i-recent_games","()","<p>Returns the last 10 games for the Summoner\n"],["rune_pages","RiotAPI::Summoner","RiotAPI/Summoner.html#method-i-rune_pages","()","<p>Returns the RunePage array for the Summoner instance\n"],["slots=","RiotAPI::RunePage","RiotAPI/RunePage.html#method-i-slots-3D","(val)",""],["statistics=","RiotAPI::Game","RiotAPI/Game.html#method-i-statistics-3D","(value)",""],["talents=","RiotAPI::MasteryPage","RiotAPI/MasteryPage.html#method-i-talents-3D","(value)",""]]}}