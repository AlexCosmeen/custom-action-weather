
# Weather GitHub Action

A Docker-based GitHub Action that retrieves current weather
information using the OpenWeather API.

## Inputs

| Input | Required | Description |
|---|---|---|
| `lat` | Yes | Latitude |
| `lon` | Yes | Longitude |
| `api_key` | Yes | OpenWeather API key |

## Outputs

| Output | Description |
|---|---|
| `temperature` | Current temperature in Celsius |
| `condition` | Current weather condition |

## Usage
<!-- WEATHER_START -->Temperature: 29.37°C - Condition: clear sky<!-- WEATHER_END -->
