#!/bin/bash

# Codename parts
prefixes=("Null" "Echo" "Phantom" "Byte" "Cipher" "Root" "Pulse" "Core" "Shadow" "Neo")
suffixes=("Spark" "Vector" "Hex" "Drift" "Nova" "Glitch" "Claw" "Storm" "Ghost" "Blade")

# Name pools
male_first=(
  "Liam" "Noah" "Kai" "Axel" "Dante" "Troy" "Hunter" "Xavier" "Blaze" "Jett"
)

female_first=(
  "Ava" "Luna" "Zara" "Freya" "Skye" "Ivy" "Sage" "Aurora" "Nova" "Lyra"
)

neutral_first=(
  "Rowan" "Sora" "Ember" "Raine" "Ash" "Kael" "Onyx" "Nyx" "Zephyr" "Rune"
)

last_names=(
  "Stone" "Blake" "Knight" "Fox" "Raven" "Storm" "Wolf" "Reed" "Drake" "Frost"
)

# Pick codename
prefix=${prefixes[$RANDOM % ${#prefixes[@]}]}
suffix=${suffixes[$RANDOM % ${#suffixes[@]}]}
codename="$prefix$suffix"

# Pick gender
genders=("male" "female" "neutral")
gender=${genders[$RANDOM % ${#genders[@]}]}

# Pick name based on gender
case $gender in
  male)
    first=${male_first[$RANDOM % ${#male_first[@]}]}
    ;;
  female)
    first=${female_first[$RANDOM % ${#female_first[@]}]}
    ;;
  neutral)
    first=${neutral_first[$RANDOM % ${#neutral_first[@]}]}
    ;;
esac

last=${last_names[$RANDOM % ${#last_names[@]}]}

# Output full identity
echo "Codename: $codename"
echo "Real Name ($gender): $first $last"
