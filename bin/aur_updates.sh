#!/bin/sh

if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

if [ "$updates_aur" -gt 0 ]; then
    echo " $updates_aur"
else
    echo ""
fi

