#!/bin/bash

first_names=(
  "Liam" "Noah" "Ethan" "Aiden" "Lucas" "Mason" "Logan" "Elijah" "James" "Oliver"
  "Kai" "Zane" "Axel" "Jett" "Blaze" "Ryder" "Dante" "Troy" "Hunter" "Xavier"
)

last_names=(
  "Stone" "Blake" "Knight" "Fox" "Black" "Raven" "Storm" "Hawk" "Wolf" "Reed"
  "Drake" "Cole" "West" "Ash" "Grimm" "Frost" "Cross" "Sloan" "Pierce" "Vance"
)

first=${first_names[$RANDOM % ${#first_names[@]}]}
last=${last_names[$RANDOM % ${#last_names[@]}]}

echo "Random male name: $first $last"
