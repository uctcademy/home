#!/bin/bash

prefixes=(
  "Null" "Echo" "Phantom" "Byte" "Cipher" "Root" "Pulse" "Net" "Core" "Ghost"
  "Dark" "Iron" "Quantum" "Neo" "Zero" "Crimson" "Viral" "Omega" "Shadow" "Cyber"
)

suffixes=(
  "Spark" "Drift" "Spectre" "Fang" "Knell" "Vector" "Hex" "Shift" "Trace" "Nova"
  "Claw" "Vibe" "Glitch" "Storm" "Flux" "Shroud" "Blade" "Echo" "Ghost" "Strike"
)

prefix=${prefixes[$RANDOM % ${#prefixes[@]}]}
suffix=${suffixes[$RANDOM % ${#suffixes[@]}]}

codename="$prefix$suffix"
echo "Your codename: $codename"
