cp .wakatime.cfg ~/
credential=$(op read "op://private/WakaTime/credential")
echo -e "\napi_key = $credential" >> ~/.wakatime.cfg