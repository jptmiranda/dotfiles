cp .wakatime.cfg ~/
credential="api_key = $(op read "op://private/WakaTime/credential")"
echo $credential >> ~/.wakatime.cfg