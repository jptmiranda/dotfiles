#!/bin/bash

cp .wakatime.cfg $HOME/
credential=$(op read "op://private/WakaTime/credential")
echo -e "\napi_key = $credential" >> ~/.wakatime.cfg