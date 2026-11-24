#!/bin/bash

first_names=(
  "Aeris" "Riven" "Kael" "Rowan" "Ember" "Draven" "Lior" "Sora" "Nyx" "Zephyr"
  "Thorne" "Onyx" "Raine" "Vale" "Ashen" "Zion" "Indra" "Rune" "Eris" "Sol"
)

last_names=(
  "Stormborn" "Nightshade" "Windwalker" "Duskwatcher" "Farsight" "Moonsong"
  "Ironwood" "Starfall" "Shadowend" "Mistveil" "Darkmoor" "Brightflame"
  "Netherwind" "Frostwhisper" "Glimmershard" "Dawnbreaker" "Blackthorn"
)

first=${first_names[$RANDOM % ${#first_names[@]}]}
last=${last_names[$RANDOM % ${#last_names[@]}]}

echo "Random neutral/fantasy name: $first $last"

