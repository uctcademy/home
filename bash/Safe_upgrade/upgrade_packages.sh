#!/bin/bash

# Run `apt update` to fetch the latest package information
echo "Running apt update..."
apt update

# Generate the list of upgradable packages
echo "Generating list of upgradable packages..."
apt list --upgradable | awk -F/ 'NR>1 {print $1}' > upgradable_packages.txt

# Check if the file contains any packages
if [ ! -s upgradable_packages.txt ]; then
    echo "No upgradable packages found."
    exit 0
fi

# Ask user for the number of packages per segment
read -p "Enter the number of packages per segment: " SEGMENT_SIZE

# Split the list into smaller files
echo "Splitting the list into segments of $SEGMENT_SIZE packages..."
split -l "$SEGMENT_SIZE" upgradable_packages.txt package_segment_

# Generate install scripts for each segment
echo "Creating install scripts for each segment..."
for file in package_segment_*; do
    echo "apt install -y $(cat $file | tr '\n' ' ')" > install_$file.sh
    chmod +x install_$file.sh
done

echo "Segments and scripts created:"
ls install_package_segment_*

echo "To install packages, run the generated scripts, e.g., ./install_package_segment_aa.sh"
