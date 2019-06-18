#!/bin/bash

for file in /usr/bin/4git*; do
    echo "uninstalling $file..."
    sudo rm -f $file
done

exit 0;