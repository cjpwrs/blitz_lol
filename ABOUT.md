# About BlitzLoL

## Github
The github repo can be found [here](https://github.com/cjpwrs/blitz_lol)

## Prompt
Create a mix project application that:

Given a valid summoner_name and region will fetch all summoners this summoner has
played with in the last 5 matches. This data is returned to the caller as a list of
summoner names (see below). Also, the following occurs:
Once fetched, all summoners will be monitored for new matches every minute
for the next hour

When a summoner plays a new match, the match id is logged to the console,
such as:
`Summoner <summoner name> completed match <match id>`
The returned data should be formatted as:

`[summoner_name_1, summoner_name_2, ...]`

## Setting up the project
  * Install dependencies (`mix deps.get`)
  * Create a `.env` file (`touch .env`)
  * Generate a valid Riot API Key [here](https://developer.riotgames.com/)
  * In your `.env`, add your Riot API key like so:
  ```
  export RIOT_API_KEY=<api-key>
  ```
  * Source your `.env` (`source .env`)
  * Start a new iex console (`iex -S mix`)
  * Run the following command with whatever summoner name and region you want:
  `BlitzLol.Summoners.track_recent_summoners_by_summoner_name("na1", "mills")`
  * A list of summoners will be returned, and as new matches are completed by those summoners, they will be logged to the console. There is an example output in the image below

  ![image](https://user-images.githubusercontent.com/11325484/140663654-0d74b22e-1200-4664-9d2a-1b5b47cddee8.png)

## Main modules
Below are the main modules used for this project. Docs can be viewed for each by clicking on the name of the module.
- `BlitzLol.Summoners`
- `BlitzLol.RiotClient`
- `BlitzLol.Summoners.Region`

## Tests
Tests can be found in the `test` directory of the project. API responses were mocked using the `mockery` library to avoid making network requests in tests.