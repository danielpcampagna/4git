#!/bin/bash

for path in commands/4git*; do
    file=$(echo "$path" | cut -c10-)
    echo "installing $file..."
    sudo cp $path /usr/bin/$file
    sudo chmod +x /usr/bin/$file;
done
echo
echo "Well done!"
echo "installed commands:"
find /usr/bin/ | grep 4git

exit 0;