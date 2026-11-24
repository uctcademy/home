#!/bin/bash

first_names=(
  "Ava" "Emma" "Sophia" "Mia" "Isla" "Luna" "Zara" "Nova" "Freya" "Skye"
  "Jade" "Aria" "Lyra" "Raven" "Ivy" "Sage" "Aurora" "Chloe" "Violet" "Elara"
)

last_names=(
  "Stone" "Blake" "Knight" "Fox" "Black" "Raven" "Storm" "Hawk" "Wolf" "Reed"
  "Drake" "Cole" "West" "Ash" "Grimm" "Frost" "Cross" "Sloan" "Pierce" "Vance"
)

first=${first_names[$RANDOM % ${#first_names[@]}]}
last=${last_names[$RANDOM % ${#last_names[@]}]}

echo "Random female name: $first $last"
